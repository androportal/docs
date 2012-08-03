====
"xbasc"
====

Scilab Function Last update : 30/07/2004
**xbasc** - clear a graphics window and erase the associated recorded
graphics



Calling Sequence
~~~~~~~~~~~~~~~~

xbasc([window-id])




Parameters
~~~~~~~~~~


+ **window-id** : integer scalar or vector




Description
~~~~~~~~~~~

Without any argument, this function clears the current graphics window
and erases the recorded graphics. Otherwise it clears the graphics
windows whose numbers are included in the vector **window-id** , and
erases the corresponding recorded graphics. For example **xbasc(1:3)**
clears windows 1, 2 and 3 and erases the corresponding recorded
graphics. If one of the windows does not exist, then it is
automatically created.

With the new graphic mode prefer ` **clf** `_ to **xbasc**



See Also
~~~~~~~~

` **clf** `_,` **xclear** `_,

.. _
      : ://./graphics/xclear.htm
.. _
      : ://./graphics/clf.htm


