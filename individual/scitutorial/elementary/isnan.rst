====
"isnan"
====

Scilab Function Last update : April 1993
**isnan** - check for "Not a Number" entries



Calling Sequence
~~~~~~~~~~~~~~~~

r=isnan(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix r : boolean vector or
  matrix




Description
~~~~~~~~~~~

**isnan(x)** returns a boolean vector or matrix which contains true
entries corresponding with "Not a Number" **x** entries and false
entries corresponding with regular **x** entries.



Examples
~~~~~~~~


::

    
    
    isnan([1 0.01 -%nan %inf-%inf])
     
      




See Also
~~~~~~~~

` **isinf** `_,

.. _
      : ://./elementary/isinf.htm


