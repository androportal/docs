====
"floor"
====

Scilab Function Last update : April 1993
**floor** - rounding down



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=floor(x)




Parameters
~~~~~~~~~~


+ **x** : a real matrix
+ **y** : integer matrix




Description
~~~~~~~~~~~

**floor(x)** returns an integer matrix made of nearest rounded down
integers.



Examples
~~~~~~~~


::

    
    
    floor([1.9 -2.5])-[1,-3]
    floor(-%inf)
    x=rand()*10^20;floor(x)-x
     
      




See Also
~~~~~~~~

` **round** `_,` **fix** `_,` **ceil** `_,

.. _
      : ://./elementary/ceil.htm
.. _
      : ://./elementary/round.htm
.. _
      : ://./elementary/fix.htm


