====
"clc"
====

Scilab Function Last update : 22/04/2004
**clc** - Clear Command Window



Calling Sequence
~~~~~~~~~~~~~~~~

clc([nblines])




Parameters
~~~~~~~~~~


+ **nblines** : a double value




Description
~~~~~~~~~~~

**clc()** clears all input and output from the Command Window.

After using **clc()** , you cannot use the scroll bar to see the
history of functions, but still can use the up arrow to recall
statements from the command history.

**clc(nblines)** clears **nblines** above cursor current line and move
cursor up to this line.

Note that **clc([nblines])** cannot be used under Unix/Linux platforms
when Scilab used in no window mode.



See Also
~~~~~~~~

` **tohome** `_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./utilities/tohome.htm


