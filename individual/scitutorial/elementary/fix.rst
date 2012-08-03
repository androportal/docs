====
"fix"
====

Scilab Function Last update : April 1993
**fix** - rounding towards zero



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=fix(x)




Parameters
~~~~~~~~~~


+ **x** : a real matrix
+ **y** : integer matrix




Description
~~~~~~~~~~~

**fix(x)** returns an integer matrix made of nearest rounded integers
toward zero,i.e, **y=sign(x).*floor(abs(x))** . Same as **int** .



See Also
~~~~~~~~

` **round** `_,` **floor** `_,` **ceil** `_,

.. _
      : ://./elementary/ceil.htm
.. _
      : ://./elementary/round.htm
.. _
      : ://./elementary/floor.htm


