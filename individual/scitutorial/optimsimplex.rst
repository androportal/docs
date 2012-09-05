


optimsimplex
============

Manage a simplex with arbitrary number of points.



SYNOPSIS
~~~~~~~~

Creation/Destruction.


::

    newobj = optimsimplex_new ( )
    newobj = optimsimplex_new ( coords )
    newobj = optimsimplex_new ( coords , fun )
    newobj = optimsimplex_new ( "axes", ... )
    newobj = optimsimplex_new ( "spendley", ... )
    newobj = optimsimplex_new ( "pfeffer", ... )
    newobj = optimsimplex_new ( "randbounds", ... )
    newobj = optimsimplex_new ( "oriented", ... )
    [newobj, data] = optimsimplex_new ( ... )
    this = optimsimplex_destroy (this)


Set/Get.


::

    this = optimsimplex_setall ( this , simplex )
    this = optimsimplex_setallfv ( this , fv )
    this = optimsimplex_setallx ( this , x )
    this = optimsimplex_setfv ( this , ive , fv )
    this = optimsimplex_setn ( this , n )
    this = optimsimplex_setnbve ( this , nbve )
    this = optimsimplex_setve ( this , ive , fv , x )
    this = optimsimplex_setx ( this , ive , x )
    simplex = optimsimplex_getall ( this )
    fv = optimsimplex_getallfv ( this )
    x = optimsimplex_getallx ( this )
    fv = optimsimplex_getfv ( this , ive )
    n = optimsimplex_getn ( this )
    nbve = optimsimplex_getnbve ( this )
    vertex = optimsimplex_getve ( this , ive )
    x = optimsimplex_getx ( this , ive )


Methods.


::

    sicenter = optimsimplex_center ( this )
    optimsimplex_check ( this )
    [this [, data]] = optimsimplex_computefv ( this , fun [, data] )
    [this [, data]] = optimsimplex_compsomefv ( this, fun, indices[, data])
    df = optimsimplex_deltafv ( this )
    dfm = optimsimplex_deltafvmax ( this )
    m = optimsimplex_dirmat ( this )
    m = optimsimplex_fvmean ( this )
    sd = optimsimplex_fvstdev ( this )
    v = optimsimplex_fvvariance ( this )
    [ g , data ] = optimsimplex_gradientfv ( this , fun , method , data )
    [ r , data ] = optimsimplex_reflect ( this , fun , data )
    [ this , data ] = optimsimplex_shrink ( this , fun , sigma , data )
    ssize = optimsimplex_size ( this , method )
    this = optimsimplex_sort ( this )
    str = optimsimplex_tostring ( this )
    cen = optimsimplex_xbar ( this , iexcl )




Purpose
~~~~~~~

The goal of this component is to provide a building block for
optimization algorithms based on a simplex. The optimsimplex package
may be used in the following optimization methods :


+ the Spendley et al. simplex method,
+ the Nelder-Mead method,
+ the Box algorithm for constrained optimization,
+ the multi-dimensional search by Virginia Torczon,
+ etc ...




Design
~~~~~~

This toolbox is designed with Oriented Object ideas in mind.



Features
~~~~~~~~

The following is a list of features the Nelder-Mead prototype
algorithm currently provides :


+ Manage various simplex initializations

    + initial simplex given by user,
    + initial simplex computed with a length and along the coordinate
      axes,
    + initial regular simplex computed with Spendley et al. formula,
    + initial simplex computed by a small perturbation around the initial
      guess point,
    + initial simplex computed from randomized bounds.

+ sort the vertices by increasing function values,
+ compute the standard deviation of the function values in the
  simplex,
+ compute the simplex gradient with forward or centered differences,
+ shrink the simplex toward the best vertex.




Description
~~~~~~~~~~~

This set of commands allows to manage a simplex made of k>=n+1 points
in a n-dimensional space. This component is the building block for a
class of direct search optimization methods such as the Nelder-Mead
algorithm or Torczon's Multi-Dimensionnal Search.

A simplex is designed as a collection of k>=n+1 vertices. Each vertex
is made of a point and a function value at that point.

The simplex can be created with various shapes. It can be configured
and quieried at will. The simplex can also be reflected or shrinked.
The simplex gradient can be computed with an order 1 forward formula
and with an order 2 centered formula.

The optimsimplex_new function allows to create a simplex. If vertices
coordinates are given, there are registered in the simplex. If a
function is provided, it is evaluated at each vertex. The
optimsimplex_destroy function destroys the object and frees internal
memory. Several functions allow to create a simplex with special
shapes, including axes-by-axes (optimsimplex_axes), regular
(optimsimplex_spendley), randomized bounds simplex with arbitrary nbve
vertices (optimsimplex_randbounds) and a heuristical small variation
around a given point (optimsimplex_pfeffer).

In the following functions, simplices and vertices are, depending on
the functions either input or output arguments. The following general
principle have been used to manage the storing of the coordinates of
the points.


+ The vertices are stored row by row, while the coordinates are stored
  column by column. This implies the following rules.
+ The coordinates of a vertex are stored in a row vector, i.e. a 1 x n
  matrix where n is the dimension of the space.
+ The function values are stored in a column vector, i.e. a nbve x 1
  matrix where nbve is the number of vertices.




Functions
~~~~~~~~~

The following functions are available.

Create/Destroy.

:optimsimplex_new Creates a new simplex object. All input arguments
are optional. If no input argument is provided, returns an empty
simplex object. The following calling sequences are available.

::

    newobj = `optimsimplex_new`_ ( )
    newobj = `optimsimplex_new`_ ( coords )
    newobj = `optimsimplex_new`_ ( coords , fun )
    [ newobj , data ] = `optimsimplex_new`_ ( coords , fun , data )


    :newobj The new simplex object.
    : :coords optional, matrix of point coordinates in the simplex. The
      coords matrix is expected to be a nbve x n matrix, where n is the
      dimension of the space and nbve is the number of vertices in the
      simplex, with nbve>= n+1.
    : :fun optional, the function to compute at vertices (default fun=[]).
      If fun is equal to [], then the function values are not computed. See
      in "The function" section below for more details on the function.
    : :data optional, user-defined data passed to the function. See in
      "The function" section below for more details on the function.
    :

: :newobj = optimsimplex_new ( "axes", ... ) Creates a new simplex
object so that it is computed axis by axis, with the given length. The
following calling sequences are available.

::

    newobj = `optimsimplex_new`_ ( "axes" , x0 )
    newobj = `optimsimplex_new`_ ( "axes" , x0 , fun )
    newobj = `optimsimplex_new`_ ( "axes" , x0 , fun , len )
    [ newobj , data ] = `optimsimplex_new`_ ( "axes" , x0 , fun , len , data )


    :newobj The new simplex object.
    : :x0 the initial point, as a row vector.
    : :fun optional, the function to compute at vertices (default fun=[]).
      If fun is equal to [], then the function values are not computed. See
      in "The function" section below for more details on the function.
    : :len optional, the length of the simplex. The default length is 1.0.
      If length is a value, that unique length is used in all directions. If
      length is a vector with n values, each length is used with the
      corresponding direction.
    : :data optional, user-defined data passed to the function. See in
      "The function" section below for more details on the function.
    :

: :newobj = optimsimplex_new ( "pfeffer", ... ) Creates a new simplex
so that it is computed from Pfeffer's method, i.e. a relative delta
for non-zero values and an absolute delta for zero values. The
following calling sequences are available.

::

    newobj = `optimsimplex_new`_ ( "pfeffer" , x0 )
    newobj = `optimsimplex_new`_ ( "pfeffer" , x0 , fun )
    newobj = `optimsimplex_new`_ ( "pfeffer" , x0 , fun , deltausual )
    newobj = `optimsimplex_new`_ ( "pfeffer" , x0 , fun , deltausual , deltazero )
    [ newobj , data ] = `optimsimplex_new`_ ( "pfeffer" , x0 , fun , deltausual , deltazero , data )


    :newobj The new simplex object.
    : :x0 the initial point, as a row vector.
    : :fun optional, the function to compute at vertices (default fun=[]).
      If fun is equal to [], then the function values are not computed. See
      in "The function" section below for more details on the function.
    : :deltausual optional, the absolute delta for non-zero values. The
      default value is 0.05.
    : :deltazero optional, the absolute delta for zero values. The default
      value is 0.0075.
    : :data optional, user-defined data passed to the function. See in
      "The function" section below for more details on the function.
    :

: :newobj = optimsimplex_new ( "randbounds", ... ) Creates a new
simplex so that it is computed by taking the bounds into account with
random scaling. The number of vertices in the simplex is arbitrary.
The following calling sequences are available.

::

    newobj = `optimsimplex_new`_ ( "randbounds", x0, fun, boundsmin, boundsmax )
    [ newobj , data ] = `optimsimplex_new`_ ( "randbounds", x0, fun, boundsmin, boundsmax, nbpoints )
    [ newobj , data ] = `optimsimplex_new`_ ( "randbounds", x0, fun, boundsmin, boundsmax, nbpoints, data )


    :newobj The new simplex object.
    : :x0 the initial point, as a row vector. It is the first vertex in
      the simplex.
    : :fun the function to compute at vertices. If fun is equal to [],
      then the function values are not computed. See in "The function"
      section below for more details on the function.
    : :boundsmin array of minimum bounds
    : :boundsmax array of maximum bounds Each component ix =1,n of the
      vertex #k = 2,nbve is computed from the formula
      `x(k,ix)=boundsmin(ix)+rand()*(boundsmax(ix)-boundsmin(ix))`.
    : :nbpoints total number of points in the simplex. Default value is
      `n+1`, where `n` is the size of `x0`.
    : :data optional, user-defined data passed to the function. See in
      "The function" section below for more details on the function.
    :

: :newobj = optimsimplex_new ( "spendley", ... ) Creates a new simplex
so that it is computed from Spendley's et al. method, i.e. a regular
simplex made of nbve = n+1 vertices. The following calling sequences
are available.

::

    newobj = `optimsimplex_new`_ ( "spendley" , x0 )
    newobj = `optimsimplex_new`_ ( "spendley" , x0 , fun )
    newobj = `optimsimplex_new`_ ( "spendley" , x0 , fun , len )
    [ newobj , data ] = `optimsimplex_new`_ ( "spendley" , x0 , fun , len, data )


    :newobj The new simplex object.
    : :x0 the initial point, as a row vector.
    : :fun optional, the function to compute at vertices (default fun=[]).
      If fun is equal to [], then the function values are not computed. See
      in "The function" section below for more details on the function.
    : :len optional, the length of the simplex. The default length is 1.0.
    : :data optional, user-defined data passed to the function. See in
      "The function" section for more details on the function.
    :

: :newobj = optimsimplex_new ( "oriented", ... ) Returns a new
oriented simplex, in sorted order. The new simplex has the same sigma-
length of the base simplex, but is "oriented" depending on the
function value. The created simplex may be used, as Kelley suggests,
for a restart of Nelder-Mead algorithm. The following calling
sequences are available.

::

    newobj = `optimsimplex_new`_ ( "oriented" , simplex0 , fun )
    [ newobj , data ] = `optimsimplex_new`_ ( "oriented" , simplex0 , fun, data )


    :newobj The new simplex object.
    : :simplex0 the base simplex
    : :fun the function to compute at vertices. If fun is equal to [],
      then the function values are not computed. See in "The function"
      section for more details on the function.
    : :data optional, user-defined data passed to the function. See in
      "The function" section for more details on the function.
    :

: :this = optimsimplex_destroy (this) Destroy the given object.
    :this The current simplex object.
    :

:

Set/Get.

:this = optimsimplex_setall ( this , simplex ) Set all the coordinates
and and the function values of all the vertices.
    :this The current simplex object.
    : :simplex the simplex to set. The given matrix is expected to be a
    nbve x n+1 matrix where n is the dimension of the space, nbve is the
    number of vertices and with the following content (where the data is
    organized by row with function value first, and x coordinates)

        + simplex(k,1) is the function value of the vertex #k, with k = 1 ,
          nbve
        + simplex(k,2:n+1) is the coordinates of the vertex #k, with k = 1 ,
          nbve

    :

: :this = optimsimplex_setallfv ( this , fv ) Set all the function
values of all the vertices. The vertex #k is expected to be stored in
fv(k) with k = 1 , nbve. The fv input argument is expected to be a row
vector.
    :this The current simplex object.
    : :fv the array of function values
    :

: :this = optimsimplex_setallx ( this , x ) Set all the coordinates of
all the vertices. The vertex #k is expected to be stored in x(k,1:n)
with k = 1 , nbve
    :this The current simplex object.
    : :x the coordinates of the vertices.
    :

: :this = optimsimplex_setfv ( this , ive , fv ) Set the function
value at given index and // returns an updated simplex.
    :this The current simplex object.
    : :ive vertex index
    : :fv the function value
    :

: :this = optimsimplex_setn ( this , n ) Set the dimension of the
space of the simplex.
    :this The current simplex object.
    : :n the dimension
    :

: :this = optimsimplex_setnbve ( this , nbve ) Set the number of
vertices of the simplex.
    :this The current simplex object.
    : :nbve the number of vertices
    :

: :this = optimsimplex_setve ( this , ive , fv , x ) Sets the
coordinates of the vertex and the function value at given index in the
current simplex.
    :this The current simplex object.
    : :ive the vertex index
    : :fv the function value
    : :x the coordinates of the point, as a row vector.
    :

: :this = optimsimplex_setx ( this , ive , x ) Set the coordinates of
the vertex at given index, as a row vector, into the current simplex.
    :this The current simplex object.
    : :ive the vertex index
    : :x the coordinates of the point, as a row vector
    :

: :simplex = optimsimplex_getall ( this ) Returns all the coordinates
of all the vertices and the function values in the same matrix.
    :this The current simplex object.
    : :simplex the simplex data. The simplex matrix has size nbve x n+1,
    and is organized by row by row as follows :

        + simplex(k,1) is the function value of the vertex #k, with k = 1 ,
          nbve
        + simplex(k,2:n+1) is the coordinates of the vertex #k, with k = 1 ,
          nbve

    :

: :fv = optimsimplex_getallfv ( this ) Returns all the function values
of all the vertices, as a row vector.
    :this The current simplex object.
    : :fv The array of function values. The function value of vertex #k is
      stored in fv(k) with k = 1 , nbve.
    :

: :x = optimsimplex_getallx ( this ) Returns all the coordinates of
all the vertices.
    :this The current simplex object.
    : :x the coordinates. The vertex #k is stored in x(k,1:n) with k = 1 ,
      nbve.
    :

: :fv = optimsimplex_getfv ( this , ive ) Returns the function value
at given index
    :this The current simplex object.
    : :ive the vertex index
    :

: :n = optimsimplex_getn ( this ) Returns the dimension of the space
of the simplex
    :this The current simplex object.
    :

: :nbve = optimsimplex_getnbve ( this ) Returns the number of vertices
in the simplex.
    :this The current simplex object.
    :

: :vertex = optimsimplex_getve ( this , ive ) Returns the vertex at
given index as a tlist, with fields n, x and fv
    :this The current simplex object.
    : :ive the vertex index
    :

: :x = optimsimplex_getx ( this , ive ) Returns the coordinates of the
vertex at given index, as a row vector.
    :this The current simplex object.
    : :ive the vertex index
    :

:

Methods.

:sicenter = optimsimplex_center ( this ) Returns the center of the
given simplex
    :this The current simplex object.
    :

: :optimsimplex_check ( this ) Check the consistency of the internal
data. Generates an error if necessary.
    :this The current simplex object.
    :

: :this = optimsimplex_computefv ( this , fun ) Set the values of the
function at vertices points. The following calling sequences are
available.

::

    this = `optimsimplex_computefv`_ ( this , fun )
    [this, data] = `optimsimplex_computefv`_ ( this , fun , data)


    :this The current simplex object.
    : :fun optional, the function to compute at vertices. See "The
      function" section below for more details on the function.
    : :data optional, user-defined data passed to the function. See "The
      function" section below for more details on the function.
    :

: :this = optimsimplex_compsomefv ( this , fun ) Set the values of the
function at vertices points. The following calling sequences are
available.

::

    this = `optimsimplex_compsomefv`_ ( this , fun )
    this = `optimsimplex_compsomefv`_ ( this, fun, indices )
    [this, data] = `optimsimplex_compsomefv`_ ( this, fun, indices, data)


    :this The current simplex object.
    : :fun optional, the function to compute at vertices. See "The
      function" section below for more details on the function.
    : :indices optional, a 1-by-m matrix of doubles, integers, positive,
      the indices of the vertices to compute (default indices=1:nbve, where
      nbve is the number of vertices).
    : :data optional, user-defined data passed to the function. See "The
      function" section below for more details on the function.
    :

: :df = optimsimplex_deltafv ( this ) Returns the vector of difference
of function values with respect to the function value at vertex #1.
    :this The current simplex object.
    :

: :dfm = optimsimplex_deltafvmax ( this ) Returns the difference of
function value between the high and the low vertices. It is expected
that the vertex #1 is associated with the smallest function value and
that the vertex #nbve is associated with the highest function value.
Since vertices are ordered, the high is greater than the low.
    :this The current simplex object.
    :

: :m = optimsimplex_dirmat ( this ) Returns the n x n matrix of
simplex directions i.e. the matrix of differences of vertices
coordinates with respect to the vertex #1.
    :this The current simplex object.
    :

: :m = optimsimplex_fvmean ( this ) Returns the mean of the function
value on the simplex.
    :this The current simplex object.
    :

: :sd = optimsimplex_fvstdev ( this ) Returns the standard deviation
of the function value on the simplex.
    :this The current simplex object.
    :

: :v = optimsimplex_fvvariance ( this ) Returns the variance of the
function value on the simplex.
    :this The current simplex object.
    :

: :g = optimsimplex_gradientfv ( this , fun , method ) Returns the
simplex gradient of the function. The following calling sequences are
available.

::

    g = `optimsimplex_gradientfv`_ ( this, fun, method )
    [ g , data ] = `optimsimplex_gradientfv`_ ( this, fun, method, data )


    :this The current simplex object.
    : :fun optional, the function to compute at vertices. See "The
      function" section below for more details on the function.
    : :method optional, the method to use to compute the simplex gradient.
      Two methods are available : "forward" or "centered". The forward
      method uses the current simplex to compute the simplex gradient. The
      centered method creates an intermediate reflected simplex and computes
      the average. If not provided, the default method is "forward".
    : :data optional, user-defined data passed to the function. See "The
      function" section below for more details on the function.
    :

: :[ r , data ] = optimsimplex_reflect ( this , fun , data ) Returns a
new simplex by reflexion of current simplex, by reflection with
respect to the first vertex in the simplex. This move is used in the
centered simplex gradient.
    :this The current simplex object.
    : :fun optional, the function to compute at vertices. See "The
      function" section below for more details on the function.
    : :data optional, user-defined data passed to the function. See "The
      function" section below for more details on the function.
    :

: :[ this , data ] = optimsimplex_shrink ( this , fun , sigma , data )
Shrink the simplex with given coefficient sigma and returns an updated
simplex. The shrink is performed with respect to the first point in
the simplex.
    :this The current simplex object.
    : :fun optional, the function to compute at vertices. See "The
      function" section below for more details on the function.
    : :sigma optional, the shrinkage coefficient. The default value is
      0.5.
    : :data optional, user-defined data passed to the function. See "The
      function" section below for more details on the function.
    :

: :ssize = optimsimplex_size ( this , method ) Returns the size of the
simplex.
    :this The current simplex object.
    : :method optional, the method to use to compute the size. The
    available methods are the following :

        + "sigmaplus" (this is the default) The sigmamplus size is the maximum
          2-norm length of the vector from each vertex to the first vertex. It
          requires one loop over the vertices.
        + "sigmaminus" The sigmaminus size is the minimum 2-norm length of the
          vector from each vertex to the first vertex. It requires one loop over
          the vertices.
        + "Nash" The "Nash" size is the sum of the norm of the norm-1 length
          of the vector from the given vertex to the first vertex. It requires
          one loop over the vertices.
        + "diameter" The diameter is the maximum norm-2 length of all the
          edges of the simplex. It requires 2 nested loops over the vertices.

    :

: :this = optimsimplex_sort ( this ) Sorts the simplex with increasing
function value order so that the smallest function value is at vertex
#1
    :this The current simplex object.
    :

: :str = optimsimplex_tostring ( this ) Returns the current simplex as
a string.
    :this The current simplex object.
    :

: :cen = optimsimplex_xbar ( this , iexcl ) Returns the center of n
vertices, by excluding the vertex with index iexcl. Returns a row
vector.
    :this The current simplex object.
    : :iexcl the index of the vertex to exclude in center computation. The
      default value of iexcl is the number of vertices : in that case, if
      the simplex is sorted in increasing function value order, the worst
      vertex is excluded.
    :

:



The function
~~~~~~~~~~~~

When creating a new simplex with the `optimsimplex_new` function, the
`fun` argument can be used to compute the function value at the
vertices.

The function `fun` is expected to have the following input and output
arguments :


::

    y = myfunction (x)


If `data` is provided, it is passed to the callback function both as
an input and output argument. In that case, the function must have the
following header :


::

    [ y , data ] = myfunction ( x , data )


The data input parameter may be used if the function uses some
additionnal parameters. It is returned as an output parameter because
the function may modify the data while computing the function value.
This feature may be used, for example, to count the number of times
that the function has been called.



Example : Creating a simplex with given vertices coordinates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, one creates a simplex with known vertices
coordinates. The function values at the vertices are unset.


::

    coords = [
        0.    0.  
        1.    0.  
        0.    1.  
    ];
    s1 = `optimsimplex_new`_ ( coords );
    `optimsimplex_getallx`_ ( s1 )
    `optimsimplex_getn`_(s1)
    `optimsimplex_getnbve`_ (s1)
    s1 = `optimsimplex_destroy`_(s1);




Example : Creating a simplex with randomized bounds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, one creates a simplex with in the 2D domain
[-5 5]^2, with [-1.2 1.0] as the first vertex. One uses the randomized
bounds method to generate a simplex with 5 vertices. The function
takes an additionnal argument mystuff, which is counts the number of
times the function is called. After the creation of the simplex, the
value of mystuff.nb is 5, which is the expected result because there
is one function call by vertex.


::

    function y=rosenbrock(x)
      y = 100*(x(2)-x(1)^2)^2+(1-x(1))^2;
    endfunction
    function [y, mystuff]=mycostf(x, mystuff)
      y = rosenbrock(x);
      mystuff.nb = mystuff.nb + 1
    endfunction
    
    mystuff = `tlist`_(["T_MYSTUFF","nb"]);
    mystuff.nb = 0;
    [ s1 , mystuff ] = `optimsimplex_new`_ ( "randbounds" , [-1.2 1.0], mycostf, ...
      [-5.0 -5.0] , [5.0 5.0], 5 , mystuff );
    s1
    `mprintf`_("Function evaluations: %d\n",mystuff.nb)
    s1 = `optimsimplex_destroy`_ ( s1 );




Initial simplex strategies
~~~~~~~~~~~~~~~~~~~~~~~~~~

In this section, we analyse the various initial simplex which are
provided in this component.

It is known that direct search methods based on simplex designs are
very sensitive to the initial simplex. This is why the current
component provides various ways to create such an initial simplex.

The first historical simplex-based algorithm is the one presented in
"Sequential Application of Simplex Designs in Optimisation and
Evolutionary Operation" by W. Spendley, G. R. Hext and F. R.
Himsworth. The "spendley" simplex creates the regular simplex which is
presented in the paper.

The "randbounds" simplex is due to M.J. Box in "A New Method of
Constrained Optimization and a Comparison With Other Methods".

Pfeffer's method is a heuristic which is presented in "Global
Optimization Of Lennard-Jones Atomic Clusters" by Ellen Fan. It is due
to L. Pfeffer at Stanford and it is used in fminsearch.



TODO
~~~~


+ implement reflection and expansion as in multidimensional search by
  Torczon
+ turn optimsimplex_reflect into a proper constructor, i.e. an option
  of the the optimsimplex_new function. Another possibility is to
  reflect "in place" as in the optimsimplex_shrink function (but in this
  case we must provide a "copy" constructor from current simplex before
  reflecting it).




Bibliography
~~~~~~~~~~~~

“Sequential Application of Simplex Designs in Optimisation and
Evolutionary Operation”, Spendley, W. and Hext, G. R. and Himsworth,
F. R., American Statistical Association and American Society for
Quality, 1962

"A Simplex Method for Function Minimization", Nelder, J. A. and Mead,
R. The Computer Journal, January, 1965, 308--313

"A New Method of Constrained Optimization and a Comparison With Other
Methods", M. J. Box, The Computer Journal 1965 8(1):42-52, 1965 by
British Computer Society

"Iterative Methods for Optimization", C.T. Kelley, 1999, Chapter 6.,
section 6.2

"Compact Numerical Methods For Computers - Linear Algebra and Function
Minimization", J.C. Nash, 1990, Chapter 14. Direct Search Methods

"Sequential Application of Simplex Designs in Optimisation and
Evolutionary Operation", W. Spendley, G. R. Hext, F. R. Himsworth,
Technometrics, Vol. 4, No. 4 (Nov., 1962), pp. 441-461, Section 3.1

"A New Method of Constrained Optimization and a Comparison With Other
Methods", M. J. Box, The Computer Journal 1965 8(1):42-52, 1965 by
British Computer Society

“Detection and Remediation of Stagnation in the Nelder--Mead Algorithm
Using a Sufficient Decrease Condition”, SIAM J. on Optimization,
Kelley,, C. T., 1999

" Multi-Directional Search: A Direct Search Algorithm for Parallel
Machines", by E. Boyd, Kenneth W. Kennedy, Richard A. Tapia, Virginia
Joanne Torczon,, Virginia Joanne Torczon, 1989, Phd Thesis, Rice
University

"Grid Restrained Nelder-Mead Algorithm", Árpád Bũrmen, Janez Puhan,
Tadej Tuma, Computational Optimization and Applications, Volume 34 ,
Issue 3 (July 2006), Pages: 359 - 375

"A convergent variant of the Nelder-Mead algorithm", C. J. Price, I.
D. Coope, D. Byatt, Journal of Optimization Theory and Applications,
Volume 113 , Issue 1 (April 2002), Pages: 5 - 19,

"Global Optimization Of Lennard-Jones Atomic Clusters", Ellen Fan,
Thesis, February 26, 2002, McMaster University



