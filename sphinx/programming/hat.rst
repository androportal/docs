Scilab Function

Last update : 13/01/2005

**hat** - (``         ^       ``) exponentiation

Calling Sequence
~~~~~~~~~~~~~~~~

``A^b``

Description
~~~~~~~~~~~

Exponentiation of matrices or vectors by a constant vector.

If ``         A       `` is a vector or a rectangular matrix the
exponentiation is done element-wise, with the usual meaning.

For square ``         A       `` matrices the exponentiation is done in
the matrix sense.

For boolean, polynomial and rational matrices, the exponent must be an
integer

Remark that ``         123.^b       `` is interpreted as
``         (123).^b       ``. In such cases dot is part of the operator,
not of the number.

Examples
~~~~~~~~

::


    2^4
    [1 2;2 4]^(1+%i)
    s=poly(0,"s");
    [1 2 s]^4
    [s 1;1  s]^(-1)
     
      

See Also
~~~~~~~~

```           exp         `` <../linear/exp.htm>`_,
```           inv         `` <../linear/inv.htm>`_,
