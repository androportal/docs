


norm
====

matrix norm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [y]=norm(x [,flag])




Arguments
~~~~~~~~~

:x real or complex vector or matrix (full or sparse storage)
: :flag string (type of norm) (default value =2)
: :y norm
:



Description
~~~~~~~~~~~

For matrices

:norm(x) or `norm(x,2)` is the largest singular value of `x` (
  `max(svd(x))`).
: :norm(x,1) The l_1 norm `x` (the largest column sum :
  `max(sum(abs(x),'r'))` ).
: :norm(x,'inf'),norm(x,%inf) The infinity norm of `x` (the largest
  row sum : `max(sum(abs(x),'c'))` ).
: :norm(x,'fro') Frobenius norm i.e. `sqrt(sum(diag(x'*x)))`.
:

For vectors

:norm(v,p) The l_p norm ( `sum(v(i)^p))^(1/p)` .
: :norm(v), norm(v,2) The l_2 norm
: :norm(v,'inf') `max(abs(v(i)))`.
:



Examples
~~~~~~~~


::

    A=[1,2,3];
    norm(A,1)
    norm(A,'inf')
    A=[1,2;3,4]
    `max`_(`svd`_(A))-norm(A)
    
    A=`sparse`_([1 0 0 33 -1])
    norm(A)




See Also
~~~~~~~~


+ `h_norm`_ H-infinity norm
+ `dhnorm`_ discrete H-infinity norm
+ `h2norm`_ H2 norm of a continuous time proper dynamical system
+ `abs`_ absolute value, magnitude
+ `svd`_ singular value decomposition


.. _h_norm: h_norm.html
.. _svd: svd.html
.. _dhnorm: dhnorm.html
.. _h2norm: h2norm.html
.. _abs: abs.html


