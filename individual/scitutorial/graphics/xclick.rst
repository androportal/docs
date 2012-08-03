====
"xclick"
====

Scilab Function Last update : 15/04/2005
**xclick** - wait for a mouse click



Calling Sequence
~~~~~~~~~~~~~~~~

[c_i,c_x,c_y,c_w,c_m]=xclick([flag])




Parameters
~~~~~~~~~~


+ **c_i** : integer, mouse button number.
+ **c_x,c_y** : real scalars, position of the mouse.
+ **c_w** : integer, window number.
+ **c_m** : string, menu callback.
+ **flag** : integer. If present, the click event queue is not cleared
  when entering xclick.




Description
~~~~~~~~~~~

**xclick** waits for a mouse click in the graphics window.

If it is called with 3 left hand side arguments, it waits for a mouse
click in the current graphics window.

If it is called with 4 or 5 left hand side arguments, it waits for a
mouse click in any graphics window.

The returned values are described below.

**c_i**: an integer which gives the number of the mouse button or key
that was pressed .
    **ibutton==0**: Left mouse button has been pressed
    **ibutton==1**: Middle mouse button has been pressed
    **ibutton==2**: Right mouse button has been pressed
    **ibutton==3**: Left mouse button has been clicked
    **ibutton==4**: Middle mouse button has been clicked
    **ibutton==5**: Right mouse button has been clicked
    **ibutton==10**: Left mouse button has been double-clicked
    **ibutton==11**: Middle mouse button has been double-clicked
    **ibutton==12**: Right mouse button has been double-clicked
    **ibutton > =32**: key with ascii code ascii(ibutton) has been pressed
    **ibutton > =1000+32**: key with ascii code ascii(ibutton-1000) has
      been pressed while CTRL key pressed
    **ibutton==-100**: graphic window has been closed
    **ibutton==-2**: a dynamic menu has been selected


**c_x,c_y**: the coordinates of the position of the mouse click in the
  current graphics scale.
**c_w**: the window number where the click has occurred.
**c_m**: string associated with a dynamic menu. If xclick returns due
  to a click on a menu, **c_i** , **c_x** , **c_y,** and **c_w** take
  arbitrary values.




See Also
~~~~~~~~

` **locate** `_,` **xgetmouse** `_,` **seteventhandler** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/locate.htm
.. _
      : ://./graphics/xgetmouse.htm
.. _
      : ://./graphics/../gui/seteventhandler.htm


