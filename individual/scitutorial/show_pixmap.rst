****


show_pixmap
===========

send the pixmap buffer to the screen **This function is obsolete.**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    show_pixmap()




Description
~~~~~~~~~~~

If a graphic window `pixmap` property is `"on"` the drawings are send
to a pixmap memory instead of the screen display.

The `show_pixmap()` instruction send the pixmap to the screen.

The pixmap mode can be used to obtain smooth animations. This property
can be found among the figure entity fields (see
`figure_properties`_).

WARNING: This function is obsolete from Scilab 5.4.0 and is going to
be removed with Scilab 5.4.1 Please use `drawlater`_/`drawnow`_
instead.



Examples
~~~~~~~~


::

    f=`gcf`_();
    f.pixmap='on'; //set the pixmap mode
    a=`gca`_();
    a.data_bounds=[0 0; 10 10];
    //construct two rectangles
    `xrects`_([0;10;1;1],5);
    r1=`gce`_();
    r1=r1.children;
    `xrects`_([0;1;1;1],13);
    r2=`gce`_();
    r2=r2.children;
    //animation loop
    for k=1:1000
      //draw the rectangles in the pixmap buffer
      `move`_(r1,[0.01,-0.01]);
      `move`_(r2,[0.01,0.01])
      //show the pixmap buffer
      show_pixmap()
      `xpause`_(10000)
    end




See Also
~~~~~~~~


+ `figure_properties`_ description of the graphics figure entity
  properties
+ `clear_pixmap`_ erase the pixmap buffer This function is obsolete.
+ `drawlater`_ makes axes children invisible.
+ `drawnow`_ draw hidden graphics entities.




History
~~~~~~~
Version Description 5.4.0 Function show_pixmap is obsolete.
.. _clear_pixmap: clear_pixmap.html
.. _figure_properties: figure_properties.html
.. _drawnow: drawnow.html
.. _drawlater: drawlater.html


