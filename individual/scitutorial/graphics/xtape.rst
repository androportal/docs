====
"xtape"
====

Scilab Function Last update : April 1993
**xtape** - set up the record process of graphics



Calling Sequence
~~~~~~~~~~~~~~~~

xtape(str,[num,rect])




Parameters
~~~~~~~~~~


+ **str** : string, "on", "clear", "replay" or "replaysc".
+ **num** : integer.
+ **rect** : row vector of size 4.




Description
~~~~~~~~~~~

**xtape** is used to set up the record process of graphics:

xtape("on") just selects the driver "Rec" which records all the
graphics operations.

xtape("clear",num) clears the graphics window **num** and clears the
recorded graphics associated with window **num** .

xtape("replay",num) redisplays all the recorded graphics in the window
**num** .

xtape("replaysc",num,rect) replots the graphics window **num** using
**rect=[xmin,ymin,xmax,ymax]** as x and y bounds.



See Also
~~~~~~~~

` **driver** `_,` **replot** `_,` **xbasc** `_,` **xbasr** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/replot.htm
.. _
      : ://./graphics/xbasr.htm
.. _
      : ://./graphics/driver.htm
.. _
      : ://./graphics/xbasc.htm


