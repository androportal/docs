====
"gstacksize"
====

Scilab Function Last update : Mai 1999
**gstacksize** - set/get scilab global stack size



Calling Sequence
~~~~~~~~~~~~~~~~

gstacksize(n)
sz=gstacksize()




Parameters
~~~~~~~~~~


+ **n** : integer, the required global stack size given in number of
  double precision words
+ **sz** : 2-vector [total used]




Description
~~~~~~~~~~~

Scilab stores gobal variables in a stack

**gstacksize(n)** allows the user to increase or decrease the size of
this stack. The maximum allowed size depends on the amount of free
memory and swap space available at the time. Note that Scilab can
increase automatically the global stacksize when needed

**sz=gstacksize()** returns a 2-vector which contains the current
total and used global stack size.



See Also
~~~~~~~~

` **who** `_,` **stacksize** `_,

.. _
      : ://./programming/who.htm
.. _
      : ://./programming/stacksize.htm


