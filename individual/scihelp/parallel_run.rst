


parallel_run
============

parallel calls to a function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [R1[,…,Rm]]=parallel_run(A1[,…,Ak], f[,types][,dims], p)




Arguments
~~~~~~~~~

:Ai Argument matrix of scalars (real) for function f. The Ai matrices
  do not need to have the same number of columns. Let n be the largest
  number of columns for the Ai : f will be called `n` times with
  arguments Ai(:,k) for k=1…n. For Ai with less than n columns, the
  columns are 'recycled' and the kth call is passed
  Ai(:,(modulo(k-1,n)+1).
: :f A scilab macro or a string containing the name of the function to
  call.
: :types strings containing the type name (as per `typeof`_) of
  results of the function **f**. Currently, only "constant" for reals
  (scalar or matrix) is supported. Defaults to "constant".
: :dims matrix with 1 or 2 columns containing the dimensions of the
  results of the function **f**. Defaults to 1 (i.e. scalar results).
: :p parameters list (as created with `init_param`_) used for tuning
  the parallelization strategy. See **§Tuning the Parallelization with
  Configuration Parameters** for the various parameters that can be set.
: :Ri vectors of n (see above) columns containing the results of the
  function called. The number of rows are given by the corresponding
  size argument if any (1 otherwise).
:



Description
~~~~~~~~~~~

parallel_run makes parallel calls (on a multicore system) to the
provided function on the supplied vectors of arguments. The function
can be the name of either a compiled foreign function (see
`ilib_for_link`_) or a Scilab macro. In the latter case, the macro
should not rely on side effects because some of them will be lost
(those performed in other processes than the main scilab process). The
number of calls (and dimension of the result vectors) is given by the
length of the longest vector of arguments.

Except for side effects, [R1[,…,Rm]]=parallel_run(A1[,…,Ak],
'f'[,types][,dims][,C]) is equivalent to the Scilab pseudo code:


::

    for i = 1:`max`_(`size`_(A1,'c'),…,`size`_(Ak,'c'))
      [R1(:,i),…,Rm(:,i)]= f(A1(:(`modulo`_(i-1,`size`_(A1,'c'))+1),…,Ak(:(`modulo`_(i-1,`size`_(Ak,'c'))+1));
    end;


Note that the equivalent code does not need `types`, `dims` or `p`.
`parallel_run` needs them for performance reasons : `types` and `dims`
are used to pre-allocate the result variables and `p` is used to fine
tune the parallelization strategy.



Limitations
~~~~~~~~~~~

In this current version of Scilab, `parallel_run` uses only one core
on Windows platforms.

In order to provide the most efficient implementation possible, the
least that parallel_run can do is to avoid imposing an overhead over
an explicit loop. Unfortunately, this can only be achieved on some
data structures. For matrices of scalar, extracting a single column to
pass as argument to the function can be done very efficiently. Not so
for matrices of strings or sparse matrices (not to mention lists !).
For now, parallel_run only handles arguments and results of scalar
matrices of real values and the **types** argument is not used.

Furthermore, no locking primitives are available in Scilab to handle
concurrent accesses to shared variables. For this reason, the
concurrent execution of Scilab macros cannot be safe in a shared
memory environment and each parallel execution must be done in a
separate memory space. As a result, one should not rely on side
effects such as modifying variables from outer scope : only the data
stored into the result variables will be copied back into the calling
environment.

As it is not possible to synchronize the access to Java Virtual
Machine accross separate memory spaces, Scilab macros called by
parallel_run are not allowed to use the JVM. This unfortunately
encompass all the graphics functions as the Scilab GUI is based on
Java. The spawned Scilab process are run in "nwni" mode their calls to
`disp()`_ are redirected to the standard output.

A last limitation imposed by the aim to minimize data shuffling info
memory is that no stack resizing (via `gstacksize()`_ or via
`stacksize()`_) should take place during a call to `parallel_run`
(neither by the function f nor by the prologue or epilogue cf.
infra.). Attempts to do do will result in a warning and leave the
stack untouched.



Advanced usage
~~~~~~~~~~~~~~

To achieve maximum performance and void any unwarranted copy and heavy
context switching, it is possible to use parallel_run on compiled
foreign functions. Such and advanced usage of parallel_run is detailed
bellow in **§ Advanced Usage : Compiled Foreign Functions**.



Examples
~~~~~~~~



First steps
~~~~~~~~~~~

First we rewrite the most trivial loop with parallel_run:


::

    for i=1:10
      res(i)= i*i;
    end;
    // for parallel_run, we need to have a function performing the computation
    function a=g(arg1)
      a=arg1*arg1
    endfunction
    
    res=parallel_run(1:10, g); // res = [1., 4., 9., 16., 25., 36., 49., 64., 81., 100.];

The matrix res was filled with res(i)= g(i), with concurrent calls to
g(). To see that the calls to `g` are not sequential, we can add some
output to the function :

::

    function a=g(arg1)
    `disp`_("called on "+`string`_(arg1));
      a=arg1*arg1;
    `disp`_("computed "+`string`_(a));
    endfunction
    
    res=parallel_run(1:6, g); // the actual output depends on the architecture (i.e. 4 cores) and current load
     called on 3
    
     computed 9
    
     called on 2
    
     called on 5
    
     computed 25
    
     computed 4
    
     called on 1
     called on 6
    
     computed 36
    
     computed 1
    
     called on 4
    
     computed 16

As we can see, not only were the calls to `g` 'out of order', but they
where also interleaved.
**Note :** This example is for illustrative purposes only ! When the
operations performed by the function are available in vector form, it
is much more efficient to use these operators than to call
parallel_run. For instance, the most efficient way to perform g() on a
vector of values would be to rewrite it as a= arg1 .* arg1 an call it
directly on the matrix of arguments (i.e res= g(1:10);). parallel_run
is intended for more involved functions.
To illustrate the running time gain, we instrument the next example
with calls to `getdate()`_. However, the next examples will focus only
on the illustrative purpose irrespectively of any actual gain. Running
the simplest Scilab function with a relevant signature on datasets
small enough to be printed is unlikely to benefit from multicore
parallel scheduling ! Each example will perform a computation with an
explicit loop, and then the same computation with parallel_run.


Wallclock gain
~~~~~~~~~~~~~~


::

    function r=f(n)
       if(n == 0)
         r= 1;
       else
         r= n-m(f(n-1));
       end;
    endfunction
    
    function r=m(n)
       if(n == 0)
         r= 0;
       else
         r= n - f(m(n-1));
       end;
    endfunction;
    
    n_max=40;
    
    t0=`getdate`_();
    for i=1:n_max
       r(i)= m(i);
    end;
    `etime`_(`getdate`_(), t0) // output the wallclock time for the explicit loop computation
    
    t0=`getdate`_();
    r= parallel_run(1:n_max,"m");
    // output the wallclock time for the parallel_run computation,
    // it should be lower that the previous on multicore architectures.
    `etime`_(`getdate`_(), t0)




Plurality of arguments and returned values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
It is of course possible to have more than one argument and more than
one returned value :

::

    function [r_min, r_med, r_max]=min_med_max(a, b, c)
      r_min=`min`_(a,b,c); r_med=`median`_([a,b,c]); r_max=`max`_(a,b,c);
    endfunction
    
    N=10;
    A=`rand`_(1:N);B=`rand`_(1:N);C=`rand`_(1:N);
    
    Min=`zeros`_(N); Med=Min; Max=Min;
    for i =1:N
      [Min(i), Med(i), Max(i)]= min_med_max(A(i), B(i), C(i));
    end;
    
    [Min,Med,Max]=parallel_run(A,B,C,"min_med_max");// equivalent to the previous loop.

As we have seen in the Note of §First steps, the best performance is
achieved by making use of vector (1xn matrices) operations. With
parallel_run, it is also possible to take advantage of those
operations by taking vector arguments and returning vector results.
When returning a vector, one must use the `dims` so that
`parallel_run` knows beforehand the number of returned values to
expect.


Vector arguments and results
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    function r=quantiles(data, ranks)
      tmp=`gsort`_(data,'g','i');
      r=tmp(ranks);
    endfunction
    
    N=100;
    data=`matrix`_(`rand`_(1:N*10), N, 10);
    
    R4_6_7=`matrix`_(`zeros`_(1:3*10),3,10);
    for i =1:10
      R4_6_7(:,i)= quantiles(data(:,i),[4;6;7]);
    end;
    // note the last argument to inform that quantiles returns 3 scalars.
    R4_6_7=parallel_run(data,[4;6;7],"quantiles", 3);

While it is only possible to pass vectors (1 x n) as columns of
argument and/or result matrices, it is easy to reshape any matrix into
such vector to circumvent this restriction. The previous example was
passing arguments with different numbers of columns. In fact, the
second argument to pass to `quantiles` only has one columns, because
all the calls to the function must be made with the same ranks. This
column is recycled as if the second argument had as much columns as
the first, all with the same values.
**Note :** In the previous example, the shape of the second argument
is of utmost importance for parallel_run ! While it was possible to
write R4_6_7(:,i)= quantiles(data(:,i),[4 **,**6 **,**7]); (note the
comma) in the explicit loop, calling
parallel_run(data,[4;6;7],"quantiles", 3) would have computed a very
different result :

::

    // with previous definitions
    -->parallel_run(data,[4;6;7],"quantiles", 3)
    ans  =
    
    0.0000426  0.0000512  0.0000387  0.0000271  0.0000175  0.0000462  0.0000243  0.0000302  0.0000483  0.0000099
    0.0000799  0.0000681  0.0000516  0.0000435  0.0000576  0.0000645  0.0000700  0.0000478  0.0000604  0.0000252
    0.0000963  0.0000953  0.0000649  0.0000452  0.0000650  0.0000805  0.0000793  0.0000615  0.0000666  0.0000335
    -->parallel_run(data,[4,6,7],"quantiles", 3)
      ans  =
    
    0.0000426  0.0000681  0.0000649  0.0000271  0.0000576  0.0000805  0.0000243  0.0000478  0.0000666  0.0000099
    0.         0.         0.         0.         0.         0.         0.         0.         0.         0.
    0.         0.         0.         0.         0.         0.         0.         0.         0.         0.

The second call to `parallel_run` has a second argument of 3 columns
and 1 row, so each call to `quantiles` only gets 1 scalar as second
argument. The first call to `quantiles` gets '4' and returns the 4th
value of the first columns of data. This is confirmed by the fact that
the returned value (0.0000426) is the same as the first returned by
the previous call to `parallel_run` (which returned the 4th, 6th and
7th values). For the second call to `parallel_run`, the two other
values of the first result column (here 0. ) are undefined because we
stated that `quantiles` would return 3 values (the last argument to
`parallel_run` ) while in fact `quantiles` only returned one (because
it only got one rank as second argument). The second call to
`quantiles` gets '6' and returns the 6th value of the second columns
of data. This is confirmed by the fact that the returned value
(0.0000681) is the same as the first returned by the previous call to
`parallel_run` (which returned the 4th, 6th and 7th values). For the
second call to `parallel_run`, the two other values of the second
result column (here 0. ) are undefined for the reason we have just
seen. The third call to `quantiles` gets '7' and computes the 7th
rank. For the next calls, the argument matrix with only three columns
has its columns recycled so that `quantiles` gets '4' and then '6' and
then '7' and then '4' etc.



Handling other data types
~~~~~~~~~~~~~~~~~~~~~~~~~



Handling other argument types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
While it is not possible to pass or return most Scilab types with
functions called by `parallel_run`, this does not mean that one cannot
interact with any data structure. The easiest is to read from any kind
of data type: as the global environment is shared amongst the parallel
execution context, one can just pass column numbers instead of columns
for instance, and let the macro access the data.


Handling a sparse matrix argument
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The following code sample shows how to access to elements of a sparse
matrix, to compute quantiles of those elements.

::

    N=5; // size of a block
    L=10; // number of blocks
    
    data=`spzeros`_(N*L,N*L);
    for k=1:L // init diagonal blocks of sparse matrix with random numbers
      kk=(k-1)*N+1:k*N;
      data(kk,kk)=`matrix`_(`rand`_(1:N*N),N,N);
    end
    // function to compute quantiles in blocks from a the data sparse matrix
    function r=quantiles_sparse(indices_i, indices_j, ranks)
      tmp=`gsort`_(`full`_(data(indices_i, indices_j)),'g','i');
      r=tmp(ranks);
    endfunction
    // compute quantiles of diagonal blocks
    // with explicit loop
    R3_6_9=`matrix`_(`zeros`_(1:3*L),3,L);
    for k=1:L
      kk=(k-1)*N+1:k*N;
      R3_6_9(:,k)=quantiles_sparse(kk,kk, [3,6,9]);
    end;
    // compute quantiles of diagonal blocks
    // with parallel_run
    idx=`matrix`_(1:(L*N), N,L);
    R3_6_9=parallel_run(idx,idx,[3;6;9],"quantiles_sparse",3);




Handling a matrix of strings argument
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The following code sample shows how to access to elements of a matrix
of strings, to compute the number of digits in those strings..

::

    a=["a1";"b2b";"1cc2c";"4d555"]
    
    function result=count_digits(str)
      result=`sum`_(`isdigit`_(str));
    endfunction
    
    for i=1:`size`_(a,'r')
      nb_digits(:,i)=count_digits(a(i));
    end;
    
    function result=count_digits_i(index) // we must define another function taking an index argument
      result=`sum`_(`isdigit`_(a(index))); // and accessing the string from the variable in outer scope
    endfunction
    
    nb_digits= parallel_run(1:`size`_(a,'r'),"count_digits_i");




Handling other result types
~~~~~~~~~~~~~~~~~~~~~~~~~~~
Other result types are much harder to handle and should be avoid if at
all possible. It would be useless to write to variables from outer
scope because each execution environment has its own copy of the
memory space. The only solution is to find a mapping to a vector of
scalars and channel the result data through it.


Handling a sparse matrix argument and result type
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The following code sample shows how to access to elements of a sparse
matrix, to compute the invert of a block diagonal sparse matrix, and
return the result in a sparse matrix.

::

    N=5; // size of a block
    L=10; // number of blocks
    
    data=`spzeros`_(N*L,N*L);
    for k=1:L// init sparse matrix with random diagonal blocks
      kk=(k-1)*N+1:k*N;
      data(kk,kk)=`matrix`_(`rand`_(1:N*N),N,N);
    end
    
    // invert the diagonal blocks of the sparse matrix
    // with explicit loop
    r=data;
    for k=1:L
      kk=(k-1)*N+1:k*N;
      r(kk,kk)=`inv`_(data(kk,kk));
    end;
    
    // function to compute the invert of a block from the sparse matrix
    // it cannot take a sparse matrix argument so it must take the block number (k)
    // a retrieve the block from the variable data in outer scope
    // it also cannot put the result directly in a sparse matrix result
    // so we return the full matrix of the inverted block
    function r=invert_one_block(block_size, k)
      kk=(k-1)*block_size+1:k*block_size;
      r=`full`_(`inv`_(data(kk,kk)));// data from global scope
    endfunction;
    
    // function to make a sparse matrix and fill it with the full results
    // from parallel_run
    function r=to_sparse(full_diag, block_size) // full_diag is L * block_size^2
    s=`size`_(full_diag);
    nb_blocks=s(2);
    r=data;//data from global scope
    for k=1:s(2)
      kk=(k-1)*block_size+1:k*block_size;
      r(kk,kk)= `matrix`_(full_diag(1:s(1),k),block_size,block_size);
    end
    endfunction
    
    // call parallel_run() to operate on blocks of the sparse matrix
    // and to_sparse() to build the sparse result
    r=to_sparse(parallel_run(N,1:L,"invert_one_block",[N,N]),N);




Handling matrices of strings as argument and result type
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The following uses the workaround seen in **§Handling a matrix of
strings argument** to access a string matrix argument, and shows how
to return strings by using their numeric representation with ascii(),
to flip odd characters in strings.

::

    a=["one a";"b";"c and a word"];
    
    // only works for ASCII
    function p=censor_odds(str)
    odds=(0:((`length`_(str)-1)/2))*2+1;
    p=`ascii`_(str);
    p(odds)= `ascii`_('#');
    p=`ascii`_(p);
    endfunction
    
    for i=1:`size`_(a,'r')
      res(i)=censor_odds(a(i));
    end;
    
    function p=censor_odds_i(i, max_len) // pass an index and the max length
    strlen=`length`_(a(i));
    odds=(0:((strlen-1)/2))*2+1;
    p=`ascii`_(a(i)+`blanks`_(max_len-strlen));
    p(odds)= `ascii`_('#');
    endfunction
    
    function v=censor_v(codes)
    for i=1:`size`_(codes,'r')
      v(i)=`ascii`_(codes(i,:));
    end;
    endfunction
    
    len=`max`_(`length`_(a));
    res=censor_v(parallel_run(1:`size`_(a,'r'), len, "censor_odds_i",len)');




Advanced Usage : Compiled Foreign Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
When aiming at maximum performance, it sometimes makes sense to
rewrite a few lines of Scilab code in a compiled language such as C++,
C or Fortran. `ilib_for_link`_ allows to do it easily from Scilab, and
`parallel_run` allows you to run your compiled code on your multicore
architecture. Moreover, as it is possible to make compiled code
thread-safe, it is also possible to launch compiled foreign function
in lightweight (with less scheduling overhead) shared memory workers
(threads), as will be seen in REF Parameters.


Compiled Foreign Functions API
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The restrictions imposed on the data types handled by `parallel_run`()
allows to use a simpler API :

::

    void f(void const* const* args, void *const* res)

Both arguments refer to data of opaque type `(void*)` and the
implementation has to know which kind of data it receives and cast the
pointers accordingly. (Note that current implementation only supports
double data, but integer types will soon be available.)
**void const* const* args** is a pointer to an array of the data of
each argument Ai. If there is only one argument, then only args[0] is
valid and contains the pointer to its data. Each argument i can be a
vector (it is a column of the Scilab matrix argument) and args[i-1]
contains the pointer to its data. If argument i is a scalar (Scilab
matrix Ai has only one row), only args[i][0] is valid and contains the
value. Note : the data referenced by **args is declared const because
it refers to arguments of the function. However, the data is currently
copied from from underlying Scilab variables before being passed to
the function, so it can safely be overwritten by casting away the
constness(but conversely cannot be used as in/out parameters). If k
arguments are provided to parallel_run, the args[0]...args[k-1] will
always be valid for each call, even if some arguments had less columns
than others : parallel_run will handle the "recycling" shown in
**§Description**.

**void *const* res** is a pointer to an array of the data of each
result Ri. If there is only one argument, then only res[0] is valid
and contains the pointer to its data. Each result i (counted from 0)
can be a vector as specified by the dims argument and res[i] contains
the pointer to its data. If res i is a scalar (default when no dims
argument is used), only res[i][0] is valid and available to store the
value.



Examples
~~~~~~~~
The following examples are the compiled foreign function rewrite of
those from the previous section. However, we will not handle other
data types because accessing those data structures from compiled code
would be outside the scope of this document. Furthermore, when speed
is of essence (as usual when one goes to the length of rewriting some
Scilab code into a compiled language) one should strive to stick to
dense matrices.


First steps
~~~~~~~~~~~

The most simple application of parallel_run is to


::

    function make_compiled_function(name, ext, code)
      filename=name+ext;
      `mputl`_(code, filename);
      `ilib_for_link`_(fun_name,filename,[],"c");
      `exec`_ loader.sce;
      `mdelete`_(filename);
    endfunction
    
    fun_name='test_fun';
    c_prog=['#include  <math.h>'
    'void '+fun_name+'(void const* const* args, void *const* res) {'
    '*((double*)*res)= (((double*)args[0])[0])*(((double*)args[0])[0]);'
    '}'];
    make_compiled_function(fun_name, '.c',c_prog);
    
    res=parallel_run(1:10, fun_name);// res = [1., 4., 9., 16., 25., 36., 49., 64., 81., 100.];




Wallclock gain
~~~~~~~~~~~~~~
In order to illustrate the parallelization gains, the next example
includes an explicit loop calling a foreign c function with call. The
remaining examples will only include the parallel_run version, as
their purpose was already illustrated in the previous section.

::

    function make_compiled_function(name, ext, code)
      filename=name+ext;
      `mputl`_(code, filename);
      `ilib_for_link`_(name,filename,[],"c");
      `exec`_ loader.sce;
      `mdelete`_(filename);
    endfunction
    
    fun_name='male';
    c_prog=['static int m(int);'
    'static int f(int n) { return n ? (n-m(f(n-1))) : 1 ; }'
    'static int m(int n) { return n ? (n-f(m(n-1))) : 0 ; }'
    'void '+fun_name+'(double* res, double* n) '
    '{ *res= (double)m((int)*n);}'];
    
    make_compiled_function(fun_name, '.c',c_prog);
    
    t0=`getdate`_();for i=1:200
      res_c(i)=`call`_(fun_name, i,2,"d","out", [1,1],1,"d");
    end;`etime`_(`getdate`_(), t0) // note that we ran the computation until m(200) !
    
    fun_name='male_p';
    // same implementation, only change is the API
    c_prog(4:5)=['void '+fun_name+'(void const* const* args, void *const* res) '
    '{ *((double*)*res)= (double)m((int)((double*)args[0])[0]); }'];
    make_compiled_function(fun_name, '.c',c_prog);
    t0=`getdate`_();res=parallel_run(1:200, fun_name);`etime`_(`getdate`_(), t0)// execution time is shorter on multicore




Plurality of arguments and returned values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
It is of course possible to have more than one argument, and more than
one returned value :

::

    N=10;
    A=`rand`_(1:N);B=`rand`_(1:N);C=`rand`_(1:N);
    
    f1=['#include <algorithm>',
    'extern ""C""{',
    '  void min_med_max_cxx(void const*const* args, void*const* res){',
    '    double a(((double const*const*)args)[0][0])',
    '    ,b(((double const*const*)args)[1][0]),c(((double const*const*)args)[2][0]);',
    '    if(b<a){ std::swap(a,b);}',
    '    if(c<a){ std::swap(a,c);}',
    '    if(c<b){ std::swap(b,c);}',
    '    ((double*const*)res)[0][0]=a; ((double*const*)res)[1][0]=b; ((double*const*)res)[2][0]= c;',
    '    return;',
    '  }',
    '}'];
    
    `mputl`_(f1,'min_med_max_cxx.cxx');
    `ilib_for_link`_('min_med_max_cxx','min_med_max_cxx.cxx',[],"c")
    `exec`_ loader.sce
    
    [Min,Med,Max]=parallel_run(A,B,C, "min_med_max_cxx")




Vector arguments and results
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    f1=['#include<algorithm>',
    'extern ""C""{',
    ' void quantiles_cxx(void const*const* args, void*const* res){',
    '   double * data(((double *const*)args)[0]);',
    '   int data_size(static_cast<int>(((double const*const*)args)[1][0]));',
    '   double const* ranks(((double *const*)args)[2]);',
    '   int ranks_size(static_cast<int>(((double *const*)args)[3][0]));',
    '   std::sort(data,data+data_size);',
    '   for(int i(0); i != ranks_size; ++i)',
    '     { ((double*const*)res)[0][i]= data[static_cast<int>(ranks[i])-1]; }',
    '   return;',
    ' }',
    '}'];
    `mputl`_(f1,'quantiles_cxx.cxx');
    `ilib_for_link`_('quantiles_cxx','quantiles_cxx.cxx',[],"c")
    `exec`_ loader.sce
    N=10;
    data=`matrix`_(`rand`_(1:N*N),N,N);
    // note the last argument to inform that quantiles returns 3 scalars.
    R4_6_7=parallel_run(data',N,[4;6;7],3,"quantiles_cxx", 3);




Tuning the Parallelization with Configuration Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
As we have seen in the calling sequence, it is possible to add a
configuration parameter as a last argument to parallel_run. This
argument is handled by the `params` module and created
with`init_param`_() (further information on how to handle parameters
can be found in the help pages of `add_param`_, `set_param`_ and
`remove_param`_).


Number of workers
~~~~~~~~~~~~~~~~~
The number of computing resources used in parallel can be set by the
parameter `nb_workers`. The default value (0) uses as many workers as
there are cores available.


Shared (threads) or separate (process) memory
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
While threads are the most efficient (lightweight) parallelization
model, current Scilab implementation does not allow threadsafe code,
so threads can only be used for foreign function (which must be
threadsafe!) and processes are used for Scilab macros. The behavior is
controlled par the `shared_memory` parameter which is a numeric value
used as a boolean : threads are used if `shared_memory` is not 0 and
`f` is a foreign function. This default value (0) implies separate
memory (processes).


Dynamic scheduling
~~~~~~~~~~~~~~~~~~
The number of function calls assigned to each worker can either be
static (each worker gets the same number of function calls to do) or
dynamic. In the latter case, function calls are assigned to workers
when they are available. The behavior is controlled par the
`dynamic_scheduling` parameter which is a numeric value used as a
boolean : dynamic scheduling is used if `dynamic_scheduling` is not 0.
This default value (1) implies dynamic scheduling. Static scheduling
is more efficient when there are many calls to the function `f` and
they will all take the same amount of time, while dynamic scheduling
should be preferred when the amount a time for each call can varies a
lot.


Chunk size
~~~~~~~~~~
In order to reduce dynamic scheduling overhead, the n function calls
are dispatched in chunks. The chunk size can be set by the parameter
`chunk_size`. The default value (0) uses chunks of size 1. For static
scheduling, there is virtually no scheduling overhead and the
difference between the minimum and maximum number of function calls
performed by the workers is at most 1.


Prologue and Epilogue
~~~~~~~~~~~~~~~~~~~~~
When using separate memory, it is not uncommon to perform process-
specific initialization and finalization. For example, when making
Monte Carlo simulations, one must insure that each process uses
different random number generator initial state, otherwise all the
processes would perform the same pseudo-random sequences in parallel !
The `prologue` (resp. `epilogue`) parameter is a string value either
empty ("" default) or containing the name of a macro taking one scalar
argument to be run upon starting (resp. ending) a new process
(separate memory worker, see above). Each process is given a unique
scalar passed as argument to both prologue and epilogue macros.

::

    function init_rand(n)
      `rand`_('seed',n);
    endfunction;
    
    function res=rand_macro(nb)
      res= `rand`_(1, nb);
    endfunction
    nb= 5;
    // We use a configuration parameter to force nb_workers = 2 even on monocore
    // without seeding the 2 workers have the same rng state.
    res= parallel_run([nb,nb],'rand_macro',nb,`init_param`_('nb_workers', 2));
    // when setting the seed, they should have different random numbers.
    res= parallel_run([nb,nb],'rand_macro',nb,`init_param`_('nb_workers', 2,'prologue','init_rand'));




See Also
~~~~~~~~


+ `typeof`_ object type
+ `ilib_for_link`_ utility for shared library management with link
+ `init_param`_ Initialize the structure which will handles the
  parameters list
+ `call`_ Fortran or C user routines call


.. _ilib_for_link: ilib_for_link.html
.. _gstacksize(): gstacksize.html
.. _disp(): disp.html
.. _add_param: add_param.html
.. _init_param: init_param.html
.. _stacksize(): stacksize.html
.. _call: call.html
.. _set_param: set_param.html
.. _typeof: typeof.html
.. _getdate(): getdate.html
.. _remove_param: remove_param.html


