


event handler functions
=======================

Prototype of functions which may be used as event handler.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    event_handler_function(win,x,y,ibut)




Arguments
~~~~~~~~~

:win window number where the event had occurred.
: :x X coordinate in pixels of the mouse pointer when the events
  occurred.
: :y Y coordinate in pixels of the mouse pointer when the events
  occurred.
: :ibut number corresponding to the event type.
:



Description
~~~~~~~~~~~

When the event handler mode is enable, Scilab will call the specified
event handler function each time an event occures in the graphic
window. The event handler function must comply with the above
prototype. Each time an event occurred, the function is called and its
four parameters are set accordingly to the window number, mouse
position and type of event.

The `ibut` parameter takes one of the following value depending on
event type:

:ibut==0 Left mouse button has been pressed
: :ibut==1 Middle mouse button has been pressed
: :ibut==2 Right mouse button has been pressed
: :ibut==3 Left mouse button has been clicked
: :ibut==4 Middle mouse button has been clicked
: :ibut==5 Right mouse button has been clicked
: :ibut==10 Left mouse button has been double-clicked
: :ibut==11 Middle mouse button has been double-clicked
: :ibut==12 Right mouse button has been double-clicked
: :ibut==-5 Left mouse button has been released
: :ibut==-4 Middle mouse button has been released
: :ibut==-3 Right mouse button has been released
: :ibut==-1 mouse pointer has moved
: :ibut > =32 key with ascii code ascii(ibut) has been pressed
: :ibut < =-32 key with ascii code ascii(-ibut) has been released
: :ibut > =1000+32 key with ascii code ascii(ibut-1000) has been
  pressed while CTRL key pressed
: :ibut==-1000 graphic window has been closed
:

For example, let say that the name of the event handler function is
fooHandler for window number 0. A left click in the window at position
[100,150] (in pixels) will be equivalent as calling fooHandler( 0,
100, 150, 3 ).

See `figure_properties`_ or `seteventhandler`_ for information on how
to specify the event_handler name.



Examples
~~~~~~~~


::

    function my_eventhandler(win, x, y, ibut)
      if ibut==-1000 then return,end
      [x,y]=`xchange`_(x,y,'i2f')
      `xinfo`_(`msprintf`_('Event code %d at mouse position is (%f,%f)',ibut,x,y))
    endfunction
    
    `plot2d`_()
    fig = `gcf`_() ;
    fig.event_handler = 'my_eventhandler' ;
    fig.event_handler_enable = "on" ;
    //now:
    //   -  move the mouse over the graphic window
    //   -  press and release keys shifted or not with Ctrl pressed or not
    //   -  press button, wait a little release
    //   -  press and release button
    //   -  double-click button
    
    fig.event_handler_enable = "off" ; //suppress the event handler




See Also
~~~~~~~~


+ `figure_properties`_ description of the graphics figure entity
  properties
+ `seteventhandler`_ set an event handler for the current graphic
  window
+ `xgetmouse`_ get the mouse events and current position
+ `xclick`_ Wait for a mouse click or an event in a graphic window.


.. _figure_properties: figure_properties.html
.. _xgetmouse: xgetmouse.html
.. _seteventhandler: seteventhandler.html
.. _xclick: xclick.html


