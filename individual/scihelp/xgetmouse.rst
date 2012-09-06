


xgetmouse
=========

get the mouse events and current position



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [rep [,win]]=xgetmouse([sel])




Arguments
~~~~~~~~~

:sel boolean vector `[getmotion, getrelease]`. default value is `[%t,
  %f]`
: :rep vector of size 3, [x,y,ibutton].
: :win number of the figure where the event occurred.
:



Description
~~~~~~~~~~~

If the mouse pointer is located in the current graphics window,
`xgetmouse` returns in `rep` the current pointer position (x,y) and
the value `ibutton`. The `ibutton` value indicates the event type:

:ibutton==0 Left mouse button has been pressed
: :ibutton==1 Middle mouse button has been pressed
: :ibutton==2 Right mouse button has been pressed
: :ibutton==3 Left mouse button has been clicked
: :ibutton==4 Middle mouse button has been clicked
: :ibutton==5 Right mouse button has been clicked
: :ibutton==10 Left mouse button has been double-clicked
: :ibutton==11 Middle mouse button has been double-clicked
: :ibutton==12 Right mouse button has been double-clicked
: :ibutton==-5 Left mouse button has been released
: :ibutton==-4 Middle mouse button has been released
: :ibutton==-3 Right mouse button has been released
: :ibutton==-1 pointer has moved
: :ibutton > =32 key with ascii code ascii(ibutton) has been pressed
: :ibutton < =-32 key with ascii code ascii(-ibutton) has been
  released
: :ibutton > =1000+32 key with ascii code ascii(ibutton-1000) has been
  pressed while CTRL key pressed
: :ibutton==-1000 graphic window has been closed
:

WARNING: In previous versions of Scilab (<5.0), the user could give a
flag to precise if the mouse click event queue had to be cleared when
entering xgetmouse. This option has been removed in Scilab 5.1.



Examples
~~~~~~~~


::

    //  rectangle selection
    `clf`_();  // erase/create window
    a=`gca`_();a.data_bounds=[0 0;100 100];//set user coordinates
    `xtitle`_(" drawing a rectangle ") //add a title
    `show_window`_(); //put the window on the top
    
    [b,xc,yc]=`xclick`_(); //get a point
    `xrect`_(xc,yc,0,0) //draw a rectangle entity
    r=`gce`_();// the handle of the rectangle
    rep=[xc,yc,-1];first=%f;
    
    while rep(3)==-1 do // mouse just moving ...
      rep=xgetmouse();
      xc1=rep(1);yc1=rep(2);
      ox=`min`_(xc,xc1);
      oy=`max`_(yc,yc1);
      w=`abs`_(xc-xc1);h=`abs`_(yc-yc1);
      r.data=[ox,oy,w,h]; //change the retangle origin, width a height
      first=%f;
    end




See Also
~~~~~~~~


+ `locate`_ mouse selection of a set of points
+ `xclick`_ Wait for a mouse click or an event in a graphic window.
+ `seteventhandler`_ set an event handler for the current graphic
  window


.. _locate: locate.html
.. _seteventhandler: seteventhandler.html
.. _xclick: xclick.html


