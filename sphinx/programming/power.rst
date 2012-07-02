Scilab Function

Last update : 13/01/2005

**power** - power operation ``         (^,.^)       ``

Calling Sequence
~~~~~~~~~~~~~~~~

``t=A^b``

``t=A**b``

``t=A.^b``

Parameters
~~~~~~~~~~

-  ``           A,t         ``: scalar, polynomial or rational matrix.
-  ``           b         ``:a scalar, a vector or a scalar matrix.

Description
~~~~~~~~~~~

**** ``           "(A:square)^(b:scalar)"         `` : If
``           A         `` is a square matrix and
``           b         `` is a scalar then ``           A^b         ``
is the matrix ``           A         `` to the power
``           b         ``.

**** ``           "(A:matrix).^(b:scalar)"         `` : If
``           b         `` is a scalar and ``           A         `` a
matrix then ``           A.^b         `` is the matrix formed by the
element of ``           A         `` to the power
``           b         `` (elementwise power). If
``           A         `` is a vector and ``           b         `` is a
scalar then ``           A^b         `` and ``           A.^b         ``
performs the same operation (i.e elementwise power).

**** ``           "(A:scalar).^(b:matrix)"         `` If
``           A         `` is a scalar and ``           b         `` is a
matrix (or vector) ``           A^b         `` and
``           A.^b         `` are the matrices (or vectors) formed by
``            a^(b(i,j))         ``.

**** ``           "(A:matrix).^(b:matrix)"         `` If
``           A         `` and ``           b         `` are vectors
(matrices) of the same size ``           A.^b         `` is the
``           A(i)^b(i)         `` vector
(``           A(i,j)^b(i,j)         `` matrix).

Notes:

- For square matrices ``         A^p       `` is computed through
successive matrices multiplications if ``         p       `` is a
positive integer, and by diagonalization if not.

- ``         **       `` and ``         ^       `` operators are
synonyms.

Examples
~~~~~~~~

::


    A=[1 2;3 4];
    A^2.5,
    A.^2.5
    (1:10)^2
    (1:10).^2

    s=poly(0,'s')
    s^(1:10)
     
      

See Also
~~~~~~~~

```           exp         `` <../linear/exp.htm>`_,
