


matrices
========

Scilab object, matrices in Scilab



Description
~~~~~~~~~~~

Matrices are basic objects defined in Scilab. They can be defined as
follows:


::

    E=[e11,e12,...,e1n;
       e21,e22,...,e2n;
            ....
       em1,em2,...,emn];


Entries `eij` can be real or complex numbers, polynomials, rationals,
strings, booleans.

Vectors are seen as matrices with one row or one column.



Examples
~~~~~~~~


::

    E=[1,2;3,4]
    E=[%T,%F;1==1,1~=1]
    s=`poly`_(0,'s');
    E=[s,s^2;1,1+s]
    E=[1/s,0;s,1/(s+1)]
    E=['A11','A12';'A21','A22']




See Also
~~~~~~~~


+ `poly`_ polynomial definition
+ `string`_ conversion to string
+ `boolean`_ Scilab Objects, boolean variables and operators & | ~
+ `rational`_ Scilab objects, rational in Scilab
+ `empty`_ ([]) empty matrix
+ `hypermatrices`_ Scilab object, N dimensional matrices in Scilab


.. _empty: empty.html
.. _boolean: boolean.html
.. _poly: poly.html
.. _string: string.html
.. _hypermatrices: hypermatrices.html
.. _rational: rational.html


