====
"ceil"
====

Scilab Function Last update : April 1993
**ceil** - rounding up



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=ceil(x)




Parameters
~~~~~~~~~~


+ **x** : a real matrix
+ **y** : integer matrix




Description
~~~~~~~~~~~

**ceil(x)** returns an integer matrix made of rounded up elements



Examples
~~~~~~~~


::

    
    
    ceil([1.9 -2.5])-[2,-2]
    ceil(-%inf)
    x=rand()*10^20;ceil(x)-x
     
      




See Also
~~~~~~~~

` **round** `_,` **floor** `_,` **int** `_,

.. _
      : ://./elementary/int.htm
.. _
      : ://./elementary/round.htm
.. _
      : ://./elementary/floor.htm


