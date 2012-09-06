


hypermat
========

initialize an N dimensional matrices



Calling Sequence
~~~~~~~~~~~~~~~~


::

    M=hypermat(dims [,v])




Arguments
~~~~~~~~~

:dims vector of hypermatrix dimensions
: :v vector of hypermatrix entries (default value
  `zeros(prod(dims),1)`)
:



Description
~~~~~~~~~~~

Initialize a hypermatrix whose dimensions are given in the vector dims
and entries are given in optional argument `v`

M data structure contains the vector of matrix dimensions `M('dims')`
and the vector of entries `M('entries')` such as the leftmost
subcripts vary first
`[M(1,1,..);..;M(n1,1,..);...;M(1,n2,..);..;M(n1,n2,..);...]`

Warning: If you build your own `hypermat`, you must be careful. The
M('dims') entry must be a row vector whereas the M('entries') must be
a column vector.



Examples
~~~~~~~~


::

    M = hypermat([2 3 2 2],1:24)
    `disp`_(`size`_(M('dims')))
    `disp`_(`size`_(M('entries')))
    
    M_own            = `mlist`_(['hm','dims','entries']);
    M_own('dims')    = [2 3 2 2];
    M_own('entries') = [1:24]';
    `disp`_(`size`_(M_own('dims')))
    `disp`_(`size`_(M_own('entries')))




See Also
~~~~~~~~


+ `hypermatrices`_ Scilab object, N dimensional matrices in Scilab
+ `zeros`_ matrix made of zeros
+ `ones`_ matrix made of ones
+ `grand`_ Random numbers
+ `matrix`_ reshape a vector or a matrix to a different size matrix


.. _ones: ones.html
.. _zeros: zeros.html
.. _grand: grand.html
.. _hypermatrices: hypermatrices.html
.. _matrix: matrix.html


