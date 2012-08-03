====
"where"
====

Scilab Function Last update : May 1994
**where** - get current instruction calling tree



Calling Sequence
~~~~~~~~~~~~~~~~

[linenum,mac]=where()




Parameters
~~~~~~~~~~


+ **linenum** : column vector of integer
+ **mac** : column vector of strings




Description
~~~~~~~~~~~

returns **linenum** and **mac** such as current instruction has been
called by the linenum(1) line of function mac(1), mac(1) has been
called by the linenum(2) line of function mac(2) and so on

mac(i) is in general the name of a function but it may also be "exec"
or "execstr" if instruction lies in ans exec file or an execstr
instruction



See Also
~~~~~~~~

` **whereami** `_,` **pause** `_,

.. _
      : ://./programming/whereami.htm
.. _
      : ://./programming/pause.htm


