


backslash
=========

(\) left matrix division.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x=A\b




Description
~~~~~~~~~~~

Backslash denotes left matrix division. `x=A\b` is a solution to
`A*x=b`.

If `A` is square and nonsingular `x=A\b` (uniquely defined) is
equivalent to `x=inv(A)*b` (but the computations are much cheaper).

If `A` is not square, `x` is a least square solution, i.e.
`norm(A*x-b)` is minimal (euclidian norm). If `A` is full column rank,
the least square solution, `x=A\b`, is uniquely defined (there is a
unique `x` which minimizes `norm(A*x-b)`). If `A` is not full column
rank, then the least square solution is not unique, and `x=A\b`, in
general, is not the solution with minimum norm (the minimum norm
solution is `x=pinv(A)*b`).

`A.\B` is the matrix with `(i,j)` entry `A(i,j)\B(i,j)`. If `A` (or
`B`) is a scalar `A.\B` is equivalent to `A*ones(B).\B` (or
`A.\(B*ones(A))`.

`A\.B` is an operator with no predefined meaning. It may be used to
define a new operator (see `overloading`_) with the same precedence as
`*` or `/`.



Examples
~~~~~~~~


::

    A=`rand`_(3,2);b=[1;1;1]; x=A\b; y=`pinv`_(A)*b;  x-y
    A=`rand`_(2,3);b=[1;1]; x=A\b; y=`pinv`_(A)*b; x-y, A*x-b, A*y-b
    
    // if rank is deficient
    A=`rand`_(3,1)*`rand`_(1,2); b=[1;1;1]; x=A\b; y=`pinv`_(A)*b; A*x-b, A*y-b
    A=`rand`_(2,1)*`rand`_(1,3); b=[1;1]; x=A\b; y=`pinv`_(A)*b; A*x-b, A*y-b 
    
    // A benchmark of several linear solvers
    
    [A,descr,ref,mtype] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/bcsstk24.rsa"); 
    
    b = `zeros`_(`size`_(A,1),1);
    
    `tic`_();
    res = `umfpack`_(A,'\',b);
    `mprintf`_('\ntime needed to solve the system with umfpack: %.3f\n',`toc`_());
    
    `tic`_();
    res = `linsolve`_(A,b);
    `mprintf`_('\ntime needed to solve the system with linsolve: %.3f\n',`toc`_());
    
    `tic`_();
    res = A\b;
    `mprintf`_('\ntime needed to solve the system with the backslash operator: %.3f\n',`toc`_());




See Also
~~~~~~~~


+ `slash`_ (/) right division and feed back
+ `inv`_ matrix inverse
+ `pinv`_ pseudoinverse
+ `percent`_ (%) special character
+ `ieee`_ set floating point exception mode
+ `linsolve`_ linear equation solver
+ `umfpack`_ solve sparse linear system


.. _linsolve: linsolve.html
.. _percent: percent.html
.. _umfpack: umfpack.html
.. _ieee: ieee.html
.. _inv: inv.html
.. _overloading: overloading.html
.. _slash: slash.html
.. _pinv: pinv.html


