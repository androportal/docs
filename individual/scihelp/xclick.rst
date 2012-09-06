


xclick
======

Wait for a mouse click or an event in a graphic window.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [ibutton,xcoord,yxcoord,iwin,cbmenu]=xclick([flag])




Arguments
~~~~~~~~~

:ibutton Real scalar (integer value): mouse button number, event
  code... (See description below).
: :xcoord Real scalar: x-ccordinate of the mouse pointer when the
  click or event occurred, in current graphic scale (see `gca()`_).
: :ycoord Real scalar: x-ccordinate of the mouse pointer when the
  click or event occurred, in current graphic scale (see `gca()`_).
: :iwin Real scalar (integer value): number of the window where the
  action occurred.
: :cbmenu String: callback associated to a menu if `xclick` returns
  due to a click on a menu. In this case, `ibutton`, `xcoord`, `ycoord`,
  and `iwin` take arbitrary values.
: :flag Real scalar (integer value): If present, the click event queue
  is not cleared when entering xclick.
:



Description
~~~~~~~~~~~

`xclick` waits for a mouse click or other events in the graphics
window.

If it is called with 3 left hand side arguments, it waits for a mouse
click in the current graphics window.

If it is called with 4 or 5 left hand side arguments, it waits for a
mouse click in any graphics window.

Warning, the returned coordinates `xcoord`, `ycoord` are relative to
the current axes (see `gca()`_).

The values of `ibutton` are described below.

:ibutton==0 Left mouse button has been pressed.
: :ibutton==1 Middle mouse button has been pressed.
: :ibutton==2 Right mouse button has been pressed.
: :ibutton==3 Left mouse button has been clicked.
: :ibutton==4 Middle mouse button has been clicked.
: :ibutton==5 Right mouse button has been clicked.
: :ibutton==10 Left mouse button has been double-clicked.
: :ibutton==11 Middle mouse button has been double-clicked.
: :ibutton==12 Right mouse button has been double-clicked.
: :ibutton >=32 key with ASCII code `ibutton` has been pressed.
: :ibutton <=32 key with ASCII code `-ibutton` has been released.
: :ibutton >=1000+32 key with ASCII code `ibutton-1000` has been
  pressed while CTRL key pressed.
: :ibutton==-1000 graphic window has been closed. WARNING: `ibutton`
  was equal to -100 for graphic window closure up to Scilab 4.1.2, but
  this code has been changed (in Scilab 5.0) because it was also the
  code returned for `d` key release.
: :ibutton==-2 A dynamic menu has been selected and its callback is
  returned in `cbmenu`.
:



See Also
~~~~~~~~


+ `gca`_ Return handle of current axes.
+ `locate`_ mouse selection of a set of points
+ `xgetmouse`_ get the mouse events and current position
+ `seteventhandler`_ set an event handler for the current graphic
  window


.. _locate: locate.html
.. _xgetmouse: xgetmouse.html
.. _gca: gca.html
.. _seteventhandler: seteventhandler.html


