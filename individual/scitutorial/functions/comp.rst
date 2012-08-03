====
"comp"
====

Scilab Function Last update : 08/09/2006
**comp** - scilab function compilation



Calling Sequence
~~~~~~~~~~~~~~~~

comp(function)




Parameters
~~~~~~~~~~


+ **function** : an not compiled scilab function (type 11)




Description
~~~~~~~~~~~

**comp(function)** compiles the function **function** . Compiled and
interpreted functions are equivalent but usually compiled functions
are much faster. The functions provided in the standard libraries are
compiled.

The online definition as well as the short syntax of the functions:
**getf** and **deff** generate compiled function. So comp has to be
used in very particular cases. To produce uncompiled function one must
use **getf** or **deff** with option **"n"** .



See Also
~~~~~~~~

` **deff** `_,` **getf** `_,` **function** `_,

.. _
      : ://./functions/getf.htm
.. _
      : ://./functions/deff.htm
.. _
      : ://./functions/function.htm


