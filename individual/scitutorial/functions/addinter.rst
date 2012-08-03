====
"addinter"
====

Scilab Function Last update : May 1995
**addinter** - new functions interface incremental linking at run time



Calling Sequence
~~~~~~~~~~~~~~~~

addinter(files,spname,fcts)




Parameters
~~~~~~~~~~


+ **files** : a character string or a vector of character string
  contain object files used to define the new Scilab interface routine
  (interface code, user routines or libraries, system libraries).
+ **spname** : a character string. Name of interface routine entry
  point
+ **fcts** : vector of character strings. The name of new Scilab
  function implemented in the new interface (in ** fin** the order ).




Description
~~~~~~~~~~~

**addinter** performs incremental linking of a compiled C or Fortran
new Scilab interface routine (see **intersci** documentation) and
define corresponding scilab functions.

For machines using dlopen functionality one can unlink an interface
with **ulink** ( use the command **link('show')** to get the number of
the shared library ). And to reload a new version of an interface a
call to **ulink** is necessary to get rid of the old version.

See **link** for more precision on use.



See Also
~~~~~~~~

` **link** `_,` **intersci** `_,` **newfun** `_,` **clearfun** `_,

.. _
      : ://./functions/clearfun.htm
.. _
      : ://./functions/../utilities/link.htm
.. _
      : ://./functions/newfun.htm
.. _
      : ://./functions/../utilities/intersci.htm


