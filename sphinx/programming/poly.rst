Scilab Function

Last update : April 1993

**poly** - polynomial definition

Calling Sequence
~~~~~~~~~~~~~~~~

``[p]=poly(a,"x", ["flag"])  ``

Parameters
~~~~~~~~~~

-  ``           a         ``: matrix or real number
-  ``           x         ``: symbolic variable
-  ``           "flag"           ``: string ("roots", "coeff"), default
   value is "roots".

Description
~~~~~~~~~~~

If ``         a       `` is a matrix, ``         p       `` is the
characteristic polynomial i.e.
``         determinant(x*eye()-a)       ``, ``         x       `` being
the symbolic variable.

If ``         v       `` is a vector,
``         poly(v,"x",["roots"])       `` is the polynomial with
``         roots       `` the entries of ``         v       `` and
``         "x"       `` as formal variable. (In this case,
``         roots       `` and ``         poly       `` are inverse
functions).

``         poly(v,"x","coeff")       `` creates the polynomial with
symbol ``         "x"       `` and with coefficients the entries of
``         v       `` (v(1) is the constant term of the polynomial).
(Here ``         poly       `` and ``         coeff       `` are inverse
functions).

``         s=poly(0,"s")       `` is the seed for defining polynomials
with symbol ``         "s"       ``.

Examples
~~~~~~~~

::


    s=poly(0,"s");p=1+s+2*s^2;
    A=rand(2,2);poly(A,"x")
     
      

See Also
~~~~~~~~

```           coeff         `` <../polynomials/coeff.htm>`_,
```           matrices         `` <matrices.htm>`_,
```           rational         `` <rational.htm>`_,
