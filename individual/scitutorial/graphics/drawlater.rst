====
"drawlater"
====

Scilab Function Last update : 13/12/2005
**drawlater** - makes axes children invisible.



Calling Sequence
~~~~~~~~~~~~~~~~

drawlater()




Description
~~~~~~~~~~~

This function can be used not to display immediatly onto the **current
figure** the next created graphics objects - i.e. by calling high
level functions such as plotting functions or setting properties to
existant objects. The **immediate_drawing** property of the current
figure is set to **'off'** in order to postpon the next drawings.

It can specially be used with the **drawnow** function.

To enable back the **immediate_drawing** for the current figure, you
can use **drawnow** function.

Warning : note that between drawlater and drawnow calls, the current
figure may have changed. Therefore, this must be used carefully.



Examples
~~~~~~~~


::

    
      //Example :  one axes / one figure
      set("figure_style","new") // select entity based graphics
      drawlater(); 
      xfarc(.25,.55,.1,.15,0,64*360);
      xfarc(.55,.55,.1,.15,0,64*360);
      xfrect(.3,.8,.3,.2); 
      xfrect(.2,.7,.5,.2);  
      xfrect(.32,.78,.1,.1);
      xfrect(.44,.78,.14,.1);
      xfrect(-.2,.4,1.5,.8);
      xstring(0.33,.9,"A Scilab Car");    
      a=get("current_axes");
      a.children(1).font_size=4;
      a.children(1).font_style=4;  
      a.children(1).background=5;
      a.children(3).background=8;
      a.children(4).background=8; 
      a.children(5).background=17;
      a.children(6).background=17; 
      a.children(7).background=25;
      a.children(8).background=25;
      xclick();drawnow();
     
      //Example 2:: two axes / one figure
    
      subplot(212)
      a=gca();
      drawlater // what will be present in this axes will be displayed later
      plot2d // draw these axes and children later...
    
      subplot(211) // Warning: we change the axes
      plot2d1 // default drawing mode
    
      draw(a) // ...axes only is visible providing you not redraw the window
      drawnow() // all is visible
      




See Also
~~~~~~~~

` **get** `_,` **set** `_,` **drawnow** `_,` **graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE, F.Leray

.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/drawnow.htm


