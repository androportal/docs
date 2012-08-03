====
"who"
====

Scilab Function Last update : April 1993
**who** - listing of variables



Calling Sequence
~~~~~~~~~~~~~~~~

who
who()
names=who('local')
[names,mem]=who('local')
names=who('global')
[names,mem]=who('global')






Description
~~~~~~~~~~~

**who** displays current variable names.

**who('local')** or **who('get')** Returns current variable names and
memory used in double precision worlds.

**who('global')** returns global variable names and memory used in
double precision worlds.



See Also
~~~~~~~~

` **whos** `_,` **who_user** `_,

.. _
      : ://./programming/who_user.htm
.. _
      : ://./programming/whos.htm


