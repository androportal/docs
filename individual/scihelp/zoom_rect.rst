


zoom_rect
=========

zoom a selection of the current graphic figure



Calling Sequence
~~~~~~~~~~~~~~~~


::

    zoom_rect()
    zoom_rect(rect)
    zoom_rect(h)
    zoom_rect(h,rect)




Arguments
~~~~~~~~~

:rect Vector of size 4 `[xmin,ymin,xmax,ymax]` give the rectangle to
  be zoomed.
: :h Graphic handle of type Figure or Axes. Specify on which Axes the
  zoom will apply.
:



Description
~~~~~~~~~~~

`zoom_rect` funtion is used to perform a zoom inside a set of Axes
Objects.

The `h` input argument specifies on which Axes the zoom will apply. If
`h` is a Figure handle then the zoom will apply on its Axes children.
If `h` is a Axes handle then the zoom will only apply to this handle.
If `h` is not specified, then the zoom is performed on the current
Figure.

If `rect` input argument is specified then the zoomed Axes `zoom_box`
property is modified by the argument (see `axes_properties`_). Its
bounds along X and Y axis are replaced by `rect`. If `rect` is not
specified zoom_rect is an interactive zoom. User is required to select
a rectangle using the mouse. The new `zoom_box` property of zoomed
axes are then computed by finding the intersections of the rectangle
with their axes boxe.



Examples
~~~~~~~~


::

    `clf`_()
    x=0:0.01:6*%pi;
    `plot2d`_(x,`sin`_(x^2))
    zoom_rect([16,-1,18,1])
    //more zoom
    zoom_rect([16,0,16.2,1])
    //back to the original
    `unzoom`_()
    // zooming using axes_properties
    a=`gca`_();
    a.zoom_box=[16,0,16.2,1];
    a.zoom_box=[];
    
    //zooming subplots accordingly
    `clf`_()
    x=0:0.01:6*%pi;
    `subplot`_(211)
    `plot2d`_(x,`cos`_(x))
    `subplot`_(212)
    `plot2d`_(x,`cos`_(2*x))
    rect=[3 -2 7 10]; //a rectangle specified in the current axes (last one) coordinates
    zoom_rect(rect) 
    `unzoom`_()
    //set the global underlying axes as current
    f=`gcf`_();`set`_('current_axes',f.children($)) 
    rect=[0.4 0 0.6 1] //a rectangle specified in ratio of the window size
    zoom_rect(rect) 
    rect=[0.4 0.2 0.6 0.8]; //a rectangle specified in ratio of the window size
    zoom_rect(rect)
    
    // interactive zoom on current figure
    zoom_rect();
    // or
    zoom_rect(`gcf`_());




See Also
~~~~~~~~


+ `unzoom`_ unzoom graphics
+ `axes_properties`_ description of the axes entity properties


.. _unzoom: unzoom.html
.. _axes_properties: axes_properties.html


