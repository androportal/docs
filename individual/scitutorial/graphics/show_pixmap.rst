====
"show_pixmap"
====

Scilab Function Last update : 24/06/2004
**show_pixmap** - send the pixmap buffer to the screen



Calling Sequence
~~~~~~~~~~~~~~~~

show_pixmap()




Description
~~~~~~~~~~~
If a graphic window **pixmap** property is **"on"** the drawings are
send to a pixmap memory instead of the screen display.The
**show_pixmap()** instruction send the pixmap to the screen.The pixmap
mode can be used to obtain smooth animations. This property can be
found among the figure entity fields (see ` **figure_properties** `_).


Examples
~~~~~~~~


::

    
       set figure_style new
       f=gcf();f.pixmap='on'; //set the pixmap mode
       a=gca();a.data_bounds=[0 0; 10 10];
       //construct two rectangles
       xrects([0;10;1;1],5);r1=gce();r1=r1.children;
       xrects([0;1;1;1],13);r2=gce();r2=r2.children;
       //animation loop
       for k=1:1000
          //draw the rectangles in the pixmap buffer
          move(r1,[0.01,-0.01]);move(r2,[0.01,0.01]) 
          //show the pixmap buffer
          show_pixmap()
       end
      




See Also
~~~~~~~~

` **figure_properties** `_,` **clear_pixmap** `_,



Author
~~~~~~

Serge Steer INRIA

.. _
      : ://./graphics/clear_pixmap.htm
.. _
      : ://./graphics/figure_properties.htm


