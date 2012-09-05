


det
===

determinant



Calling Sequence
~~~~~~~~~~~~~~~~


::

    det(X)
    [e,m]=det(X)




Arguments
~~~~~~~~~

:X real or complex square matrix, polynomial or rational matrix.
: :m real or complex number, the determinant base 10 mantissae
: :e integer, the determinant base 10 exponent
:



Description
~~~~~~~~~~~

`det(X)` ( `m*10^e` is the determinant of the square matrix `X`.

For polynomial matrix `det(X)` is equivalent to `determ(X)`.

For rational matrices `det(X)` is equivalent to `detr(X)`.



References
~~~~~~~~~~

det computations are based on the Lapack routines DGETRF for real
matrices and ZGETRF for the complex case.



Examples
~~~~~~~~


::

    x=`poly`_(0,'x');
    det([x,1+x;2-x,x^2])
    w=`ssrand`_(2,2,4);`roots`_(det(`systmat`_(w))),`trzeros`_(w)   //zeros of linear system
    A=`rand`_(3,3);
    det(A), `prod`_(`spec`_(A))




See Also
~~~~~~~~


+ `detr`_ polynomial determinant
+ `determ`_ determinant of polynomial matrix


.. _determ: determ.html
.. _detr: detr.html


