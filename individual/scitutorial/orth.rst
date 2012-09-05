


orth
====

orthogonal basis



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Q=orth(A)




Arguments
~~~~~~~~~

:A real or complex matrix
: :Q real or complex matrix
:



Description
~~~~~~~~~~~

`Q=orth(A)` returns `Q`, an orthogonal basis for the span of `A`.
Range( `Q`) = Range( `A`) and `Q'*Q=eye`.

The number of columns of `Q` is the rank of `A` as determined by the
QR algorithm.



Examples
~~~~~~~~


::

    A=`rand`_(5,3)*`rand`_(3,4);
    [X,dim]=`rowcomp`_(A);X=X';
    `svd`_([orth(A),X(:,1:dim)])




See Also
~~~~~~~~


+ `qr`_ QR decomposition
+ `rowcomp`_ row compression, range
+ `colcomp`_ column compression, kernel, nullspace
+ `range`_ range (span) of A^k


.. _range: range.html
.. _colcomp: colcomp.html
.. _qr: qr.html
.. _rowcomp: rowcomp.html


