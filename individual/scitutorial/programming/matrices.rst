====
"matrices"
====

Scilab Function Last update : April 1993
**matrices** - Scilab object, matrices in Scilab



Description
~~~~~~~~~~~

Matrices are basic objects defined in Scilab. They can be defined as
follows:


::

    
    
    E=[e11,e12,...,e1n;
       e21,e22,...,e2n;
            ....
       em1,em2,...,emn];
       
        


Entries **eij** can be real or complex numbers, polynomials,
rationals, strings, booleans.

Vectors are seen as matrices with one row or one column.



Examples
~~~~~~~~


::

    
    
    E=[1,2;3,4]
    E=[%T,%F;1==1,1~=1]
    s=poly(0,'s');E=[s,s^2;1,1+s]
    E=[1/s,0;s,1/(s+1)]
    E=['A11','A12';'A21','A22']
     
      




See Also
~~~~~~~~

` **poly** `_,` **string** `_,` **boolean** `_,` **rational** `_,`
**empty** `_,` **hypermatrices** `_,

.. _
      : ://./programming/../strings/string.htm
.. _
      : ://./programming/hypermatrices.htm
.. _
      : ://./programming/rational.htm
.. _
      : ://./programming/empty.htm
.. _
      : ://./programming/boolean.htm
.. _
      : ://./programming/poly.htm


