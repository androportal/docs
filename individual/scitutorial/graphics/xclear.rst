====
"xclear"
====

Scilab Function Last update : April 1993
**xclear** - clear a graphics window



Calling Sequence
~~~~~~~~~~~~~~~~

xclear([window-id])




Parameters
~~~~~~~~~~


+ **window-id** : integer scalar or vector




Description
~~~~~~~~~~~

Without any argument, this function clears the current window.
Otherwise it clears the graphics windows whose numbers are included in
the vector **window-id** . For example **xclear(1:3)** clears windows
1, 2 and 3. If one of the windows does not exist, then it is
automatically created.

Warning: in recording mode **xclear** clears the window, but it does
not erase the recorded commands. In this case you must use the
function **xbasc** .



See Also
~~~~~~~~

` **xbasc** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xbasc.htm


