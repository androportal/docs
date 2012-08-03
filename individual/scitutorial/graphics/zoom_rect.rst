====
"zoom_rect"
====

Scilab Function Last update : 16/11/2004
**zoom_rect** - zoom a selection of the current graphic figure



Calling Sequence
~~~~~~~~~~~~~~~~

zoom_rect()
zoom_rect(rect)




Parameters
~~~~~~~~~~


+ **rect** : vector of size 4 **[xmin,ymin,xmax,ymax]** give the
  rectangle to be zoomed.




Description
~~~~~~~~~~~

**zoom_rect** is used to zoom a given rectangle of the current graphic
figure: the rectangle(s) formed by the intersection of the given
rectangle with the axes boxe(s) are zoomed, i.e. the rectangle(s)
content are enlarged to fill the axes boxe(s). The selected rectangle
for each axes is stored in the **zoom_box** property of associated the
axes entity (see ` **axes_properties** `_).

Without argument, the user is required to select the rectangle with
the mouse. If specified, the **rect** argument should contain the
coordinates ( using the current graphics scale) of two opposite corner
of the rectangle.

The **zoom_rect** function corresponds to the **Zoom** menu.



Examples
~~~~~~~~


::

    
        clf()
        x=0:0.01:6*%pi;
        plot2d(x,sin(x^2))
        zoom_rect([16,-1,18,1])
        //more zoom
        zoom_rect([16,0,16.2,1])
        //back to the original
        unzoom()
        // zooming using axes_properties
        a=gca();
        a.zoom_box=[16,0,16.2,1];
        a.zoom_box=[];
    
        //zooming subplots accordingly
        clf()
        x=0:0.01:6*%pi;
        subplot(211)
        plot2d(x,cos(x))
        subplot(212)
        plot2d(x,cos(2*x))
        rect=[3 -2 7 10]; //a rectangle specified in the current axes (last one) coordinates
        zoom_rect(rect) 
        unzoom()
        //set the global underlying axes as current
        f=gcf();set('current_axes',f.children($)) 
        rect=[0.4 0 0.6 1] //a rectangle specified in ratio of the window size
        zoom_rect(rect) 
        rect=[0.4 0.2 0.6 0.8]; //a rectangle specified in ratio of the window size
        zoom_rect(rect) 
     
    




See Also
~~~~~~~~

` **unzoom** `_,` **axes_properties** `_,



Author
~~~~~~

Serge Steer INRIA

.. _
      : ://./graphics/axes_properties.htm
.. _
      : ://./graphics/unzoom.htm


