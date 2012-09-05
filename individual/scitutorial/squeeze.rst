


squeeze
=======

squeeze



Calling Sequence
~~~~~~~~~~~~~~~~


::

    hypOut = squeeze(hypIn)




Arguments
~~~~~~~~~

:hypIn hypermatrix or matrix of constant type.
: :hypOut hypermatrix or matrix of constant type.
:



Description
~~~~~~~~~~~

Remove singleton dimensions of a hypermatrix, that is any dimension
for which the size is 1. If the input is a matrix, it is unaffected.



Examples
~~~~~~~~


::

    M1 = `zeros`_(2,1,5)
    squeeze(M1)
    squeeze(M1(:,:,1))
    
    M2 = `hypermat`_([2 1 2 1],1:4)
    squeeze(M2)




See Also
~~~~~~~~


+ `hypermat`_ initialize an N dimensional matrices
+ `hypermatrices`_ Scilab object, N dimensional matrices in Scilab


.. _hypermat: hypermat.html
.. _hypermatrices: hypermatrices.html


