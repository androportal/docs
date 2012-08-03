====
"whos"
====

Scilab Function Last update : 30/11/2005
**whos** - listing of variables in long form



Calling Sequence
~~~~~~~~~~~~~~~~

whos()
whos -type typ
whos -name nam




Parameters
~~~~~~~~~~


+ **typ** : name of selected variable type (see typeof)
+ **nam** : first characters of selected names




Description
~~~~~~~~~~~

**whos()** displays all current variable names, types and memory used.

**whos -type typ** displays all current variables with specified type.

**whos -name nam** displays all current variables whose names begin
with **nam** .

Note : If a variable is global, a * appears ahead of his type.



Examples
~~~~~~~~


::

    
    whos()
    whos -type boolean
    whos -name %




See Also
~~~~~~~~

` **who** `_,` **typeof** `_,

.. _
      : ://./programming/who.htm
.. _
      : ://./programming/../elementary/typeof.htm


