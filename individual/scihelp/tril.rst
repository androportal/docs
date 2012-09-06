


tril
====

lower triangular part of matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tril(x [,k])




Arguments
~~~~~~~~~

:x matrix (real, complex, polynomial, rational)
: :k integer (default value 0)
:



Description
~~~~~~~~~~~

Lower triangle part of a matrix. `tril(x,k)` is made by entries below
the kth diagonal : k>0 (upper diagonal) and k<0 (diagonals below the
main diagonal).



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    tril([s,s;s,1])
    tril([1/s,1/s;1/s,1])




See Also
~~~~~~~~


+ `triu`_ upper triangle
+ `ones`_ matrix made of ones
+ `eye`_ identity matrix
+ `diag`_ diagonal including or extracting


.. _triu: triu.html
.. _diag: diag.html
.. _eye: eye.html
.. _ones: ones.html


