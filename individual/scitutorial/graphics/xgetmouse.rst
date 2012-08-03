====
"xgetmouse"
====

Scilab Function Last update : 10/02/2006
**xgetmouse** - get the mouse events and current position



Calling Sequence
~~~~~~~~~~~~~~~~

rep=xgetmouse([flag], [sel])




Parameters
~~~~~~~~~~


+ **flag** : integer. If present, the mouse click event queue is not
  cleared when entering xgetmouse.
+ **sel** : boolean vector **[getmotion, getrelease]** . default value
  is **[%t, %f]**
+ **rep** : vector of size 3, [x,y,ibutton].




Description
~~~~~~~~~~~

If the mouse pointer is located in the current graphics window,
**xgetmouse** returns in **rep** the current pointer position (x,y)
and the value **ibutton** . The **ibutton** value indicates the event
type:

**ibutton==0**: Left mouse button has been pressed
**ibutton==1**: Middle mouse button has been pressed
**ibutton==2**: Right mouse button has been pressed
**ibutton==3**: Left mouse button has been clicked
**ibutton==4**: Middle mouse button has been clicked
**ibutton==5**: Right mouse button has been clicked
**ibutton==10**: Left mouse button has been double-clicked
**ibutton==11**: Middle mouse button has been double-clicked
**ibutton==12**: Right mouse button has been double-clicked
**ibutton==-5**: Left mouse button has been released
**ibutton==-4**: Middle mouse button has been released
**ibutton==-3**: Right mouse button has been released
**ibutton==-1**: pointer has moved
**ibutton > =32**: key with ascii code ascii(ibutton) has been pressed
**ibutton < =-32**: key with ascii code ascii(-ibutton) has been
  released
**ibutton > =1000+32**: key with ascii code ascii(ibutton-1000) has
  been pressed while CTRL key pressed
**ibutton==-1000**: graphic window has been closed




Examples
~~~~~~~~


::

    
    
    //  rectangle selection
    clf();  // erase/create window
    a=gca();a.data_bounds=[0 0;100 100];//set user coordinates
    xtitle(" drawing a rectangle ") //add a title
    xselect(); //put the window on the top
    
    [b,xc,yc]=xclick(); //get a point
    xrect(xc,yc,0,0) //draw a rectangle entity
    r=gce();// the handle of the rectangle
    rep=[xc,yc,-1];first=%f;
    
    while rep(3)==-1 do // mouse just moving ...
      if first then rep=xgetmouse();else rep=xgetmouse(0);end
      xc1=rep(1);yc1=rep(2);
      ox=mini(xc,xc1);
      oy=maxi(yc,yc1);
      w=abs(xc-xc1);h=abs(yc-yc1);
      r.data=[ox,oy,w,h]; //change the retangle origin, width an height
      first=%f;
    end
     
      




See Also
~~~~~~~~

` **locate** `_,` **xclick** `_,` **seteventhandler** `_,



Author
~~~~~~

S. Steer

.. _
      : ://./graphics/locate.htm
.. _
      : ://./graphics/xclick.htm
.. _
      : ://./graphics/../gui/seteventhandler.htm


