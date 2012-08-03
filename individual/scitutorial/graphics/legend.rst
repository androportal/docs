====
"legend"
====

Scilab Function Last update : 10/10/2005
**legend** - draw graph legend



Calling Sequence
~~~~~~~~~~~~~~~~

hl=legend([h,] string1,string2, ... [,pos] [,boxed])
hl=legend([h,] strings [,pos] [,boxed])





Parameters
~~~~~~~~~~


+ **h** : graphic handle on an Axes entity or vector of handles on
  polyline entities. The default value is the handle on **current_axes**
  .
+ **string1,string2, ...** : character strings stringsi is the legend
  of the ith curve
+ **strings** : n vector of strings, strings(i) is the legend of the
  ith curve
+ **pos** : (optional) specify where to draw the legend; this
  parameter may be a integer flag (or equivalently a string flag) or a
  vector [x,y] which gives the coordinates of the upper left corner of
  the legend box. In the first case the possible values are:

    + **1** the legend are drawn in the upper right-hand corner (default).
    + **2** the legend are drawn in the upper left-hand corner.
    + **3** the legend are drawn in the lower left-hand corner.
    + **4** the legend are drawn in the lower right-hand corner.
    + **5** interactive placement with the mouse .

+ **boxed** : a boolean (default value %t) which sets ot not the
  drawing of the box.
+ **hl** : a handle, points to the Compound containing all the legend
  .




Description
~~~~~~~~~~~

Puts a legend on the current plot using the specified strings as
labels. legend prepends labels by a recall of the corresponding line
or patch. The recall is type ans properties are recover from the given
handles:

when called without handle argument (or with a handle on a axes
entity) the function looks first build the vectors of handle on
polylines entities which are the children of the given axes.

In the interactive placement (opt=5) move the legend box with the
mouse and press the left button to release it.

This function allows more flexible placement of the legend than the
leg plot2d argument.



Examples
~~~~~~~~


::

    
    
    set figure_style new
    t=0:0.1:2*%pi;
    a=gca();a.data_bounds=[t(1) -1.8;t($) 1.8];
    
    plot2d(t,[cos(t'),cos(2*t'),cos(3*t')],[-1,2 3]);  
    e=gce();
    e.children(1).thickness=3;
    e.children(2).line_style=4;
    
    hl=legend(['cos(t)';'cos(2*t)';'cos(3*t)'],a=1);
     
      




See Also
~~~~~~~~

` **plot2d** `_,` **xstring** `_,` **polyline_properties** `_,

.. _
      : ://./graphics/polyline_properties.htm
.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/xstring.htm


