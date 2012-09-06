


seteventhandler
===============

set an event handler for the current graphic window



Calling Sequence
~~~~~~~~~~~~~~~~


::

    seteventhandler(sfun_name)
    seteventhandler('')




Arguments
~~~~~~~~~

:sfun_name a character string. The name of the Scilab function which
  is intended to handle the events
:



Description
~~~~~~~~~~~

The function allows the user to set a particular event handler for the
current graphic window. `seteventhandler('')` removes the handler.

For more information about event handler functions see the `event
handler functions`_ help.



Examples
~~~~~~~~


::

    function my_eventhandler(win, x, y, ibut)
      if ibut==-1000 then return,end
      [x,y]=`xchange`_(x,y,'i2f')
      `xinfo`_(`msprintf`_('Event code %d at mouse position is (%f,%f)',ibut,x,y))
    endfunction
    
    `plot2d`_()
    seteventhandler('my_eventhandler')
    //now:
    //   -  move the mouse over the graphic window
    //   -  press and release keys shifted or not with Ctrl pressed or not
    //   -  press button, wait a little release
    //   -  press and release button
    //   -  double-click button
    
    seteventhandler('') //suppress the event handler




See Also
~~~~~~~~


+ `addmenu`_ interactive button or menu definition
+ `xgetmouse`_ get the mouse events and current position
+ `xclick`_ Wait for a mouse click or an event in a graphic window.
+ `xchange`_ transform real to pixel coordinates
+ `event handler functions`_ Prototype of functions which may be used
  as event handler.
+ `figure_properties`_ description of the graphics figure entity
  properties


.. _event handler functions: eventhandlerfunctions.html
.. _addmenu: addmenu.html
.. _xclick: xclick.html
.. _xchange: xchange.html
.. _figure_properties: figure_properties.html
.. _xgetmouse: xgetmouse.html


