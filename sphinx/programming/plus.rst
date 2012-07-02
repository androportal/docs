Scilab Operator

Last update : April 1993

**plus** - (+) addition operator

Calling Sequence
~~~~~~~~~~~~~~~~

``X+Y``

``str1+str2``

Parameters
~~~~~~~~~~

-  ``           X,Y         ``: scalar or vector or matrix of numbers,
   polynomials or rationals. It may also be a
   ``           syslin         `` list
-  ``           str1,str2         ``: a character string, a vector or a
   matrix of character strings

Description
~~~~~~~~~~~

Addition.

For numeric operands addition as its usual meaning. If one of the
operands is a matrix and the other one a scalar the scalar is added to
each matrix entries. if one of the operands is an empty matrix the other
operand is returned (this default behavior can be modified by the
function ``         mtlb_mode       ``).

For character strings ``         +       `` means concatenation.

Addition may also be defined for other data types through "soft-coded"
operations (see ``         overloading       ``).

Examples
~~~~~~~~

::


    [1,2]+1
    []+2
    s=poly(0,"s");
    s+2
    1/s+2
    "cat"+"enate"
     
      

See Also
~~~~~~~~

```           addf         `` <../elementary/addf.htm>`_,
```           mtlb_mode         `` <mtlb_mode.htm>`_,
```           overloading         `` <overloading.htm>`_,
