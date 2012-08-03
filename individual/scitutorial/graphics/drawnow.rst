====
"drawnow"
====

Scilab Function Last update : 28/09/2005
**drawnow** - draw hidden graphics entities.



Calling Sequence
~~~~~~~~~~~~~~~~

drawnow()




Description
~~~~~~~~~~~

Considering the current figure, this function can be used to draw the
hidden graphics entities and all its chidren, that may have been
postponed by a previous call to **drawlater** . The
**immediate_drawing** property of the **current figure** is set to
**"on" ** .

It can specially be used with the **drawlater** function.



Examples
~~~~~~~~


::

    
    
    
      set("figure_style","new") // select entity based graphics
      f=get("current_figure") // handle of the current figure
      
      drawlater()
      subplot(221);
      t=1:10;plot2d(t,t.^2)
      subplot(222);
      x=0:1:7;plot2d(x,cos(x),2) 
      subplot(234);
      plot2d(t,cos(t),3);
      subplot(235);
      plot2d(x,sin(2*x),5); 
      subplot(236);
      plot2d(t,tan(2*t));  
     
      draw(gca()); //draw the current axes and its children
      draw(f.children([3 4])); // draw the specified axes and their children
      drawnow(); // draw the current figure
    
     
      




See Also
~~~~~~~~

` **get** `_,` **set** `_,` **drawlater** `_,` **graphics_entities**
`_,



Author
~~~~~~

Djalel ABDEMOUCHE, F.Leray

.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/drawlater.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/graphics_entities.htm


