====
"nearfloat"
====

Scilab Function Last update : April 2001
**nearfloat** - get previous or next floating-point number



Calling Sequence
~~~~~~~~~~~~~~~~

xnear = nearfloat(dir, x)




Parameters
~~~~~~~~~~


+ **dir** : string ("succ" or "pred")
+ **x** : real scalar, vector or matrix
+ **xnear** : real scalar, vector or matrix




Description
~~~~~~~~~~~

This function computes, in the element wise meaning, the corresponding
neighbours of the elements of **x** (in the underlying floating point
set, see number_properties), the successors if **dir = "succ"** and
the predecessors if **dir = "pred"**



Examples
~~~~~~~~


::

    
    
    format("e",22)
    nearfloat("succ",1) - 1
    1 - nearfloat("pred",1)
    format("v") //reset default format
       
      




See Also
~~~~~~~~

` **number_properties** `_,` **frexp** `_,



Author
~~~~~~

B.P.

.. _
      : ://./elementary/frexp.htm
.. _
      : ://./elementary/number_properties.htm


