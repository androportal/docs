====
"delbpt"
====

Scilab Function Last update : 06/02/2005
**delbpt** - delete breakpoints



Calling Sequence
~~~~~~~~~~~~~~~~

delbpt([macroname [,linenumb]])




Parameters
~~~~~~~~~~


+ **macroname** : string
+ **linenumb** : scalar integer or vector of integers




Description
~~~~~~~~~~~

Deletes the breakpoint at line **linenumb** in the function
**macroname** .

**linenumb** can be a line or column vector of line numbers, or a
single scalar line number.

If **linenumb** is omitted, all the breakpoints in function
**macroname** are deleted.

If both **macroname** and **linenumb** are omitted, all the
breakpoints in all the functions are deleted.



Examples
~~~~~~~~


::

    setbpt('foo',1),setbpt('foo',10),delbpt('foo',10),dispbpt()
    delbpt('foo',1),dispbpt()
    
    setbpt('foo1',4),setbpt('foo1',9),setbpt('foo2',6),setbpt('foo3',8),dispbpt()
    delbpt('foo2'),dispbpt()
    delbpt(),dispbpt()
    
    delbpt('foo',[1,2,5,6]),dispbpt()




See Also
~~~~~~~~

` **setbpt** `_,` **dispbpt** `_,` **pause** `_,` **resume** `_,

.. _
      : ://./functions/../programming/pause.htm
.. _
      : ://./functions/setbpt.htm
.. _
      : ://./functions/../programming/resume.htm
.. _
      : ://./functions/dispbpt.htm


