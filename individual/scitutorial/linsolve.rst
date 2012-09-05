


linsolve
========

linear equation solver



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x0,kerA]=linsolve(A,b [,x0])




Arguments
~~~~~~~~~

:A a `na x ma` real matrix (possibly sparse)
: :b a `na x 1` vector (same row dimension as `A`)
: :x0 a real vector
: :kerA a `ma x k` real matrix
:



Description
~~~~~~~~~~~

`linsolve` computes all the solutions to `A*x+b=0`.

`x0` is a particular solution (if any) and `kerA=`nullspace of `A`.
Any `x=x0+kerA*w` with arbitrary `w` satisfies `A*x+b=0`.

If compatible `x0` is given on entry, `x0` is returned. If not a
compatible `x0`, if any, is returned.



Examples
~~~~~~~~


::

    A=`rand`_(5,3)*`rand`_(3,8);
    b=A*`ones`_(8,1);[x,kerA]=linsolve(A,b);A*x+b   //compatible b
    b=`ones`_(5,1);[x,kerA]=linsolve(A,b);A*x+b   //uncompatible b
    A=`rand`_(5,5);[x,kerA]=linsolve(A,b), -`inv`_(A)*b  //x is unique
    
    // Benchmark with other linear sparse solver:
    [A,descr,ref,mtype] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/bcsstk24.rsa"); 
    
    b = `zeros`_(`size`_(A,1),1);
    
    `tic`_();
    res = `umfpack`_(A,'\',b);
    `mprintf`_('\ntime needed to solve the system with umfpack: %.3f\n',`toc`_());
    
    `tic`_();
    res = linsolve(A,b);
    `mprintf`_('\ntime needed to solve the system with linsolve: %.3f\n',`toc`_());
    
    `tic`_();
    res = A\b;
    `mprintf`_('\ntime needed to solve the system with the backslash operator: %.3f\n',`toc`_());




See Also
~~~~~~~~


+ `inv`_ matrix inverse
+ `pinv`_ pseudoinverse
+ `colcomp`_ column compression, kernel, nullspace
+ `im_inv`_ inverse image
+ `umfpack`_ solve sparse linear system
+ `backslash`_ (\) left matrix division.


.. _colcomp: colcomp.html
.. _umfpack: umfpack.html
.. _im_inv: im_inv.html
.. _inv: inv.html
.. _backslash: backslash.html
.. _pinv: pinv.html


