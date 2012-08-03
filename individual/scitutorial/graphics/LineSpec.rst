====
"LineSpec"
====

Scilab Function Last update : 26/03/2005
**LineSpec** - to quickly customize the lines appearance in a plot



Calling Sequence
~~~~~~~~~~~~~~~~

None. The LineSpec is an optional argument that can be used inside a
  plot command to customize each new line aspect. It has to be given as
  a concatenated string containing information about color, line style
  or markers. It is very usefull to quickly specify such basic line
  properties.


To specify a red longdash-dot with diamond marker, the string can be
  'r-.diam'. As you can see, a full complete spelling of each property
  value is not required but the string, which is a concatenation (in any
  order) of these three types of properties , must remain unambiguous.
  Furthermore, the string specification is not case sensitive.




Description
~~~~~~~~~~~

Here is a complete list of the **LineSpec** types you can specify
(using ` **plot** `_).

****


**LineStyle: **a string defining the line style. This property is
linked to the object's **line_style** property (see `
**polyline_properties** `_).
    ****

**Specifier** **Line Style** **-** Solid line (default) **--** Dashed
  line **:** Dotted line **-.** Dash-dotted line
****
****
**Color: **a string defining the line color. This property is linked
to the object's **foreground** property (see ` **polyline_properties**
`_).
    ****

**Specifier** **Color** **r** Red **g** Green **b** Blue **c** Cyan
  **m** Magenta **y** Yellow **k** Black **w** White
****
    ****

A default color table is used to color plotted curves if you do not
specify a color (neither with **LineSpec** nor with `
**GlobalProperty** `_). When drawing multiple lines, the plot command
automatically cycles through this table. Here are the used colors:
    ****


**** **R** **G** **B** 0. 0. 1. 0. 0.5 0. 1. 0. 0. 0. 0.75 0.75 0.75
  0. 0.75 0.75 0.75 0. 0.25 0.25 0.25
****
****
**Marker type: **A string defining the marker type. note that if you
specify a marker wihtout a line style, only the marker is drawn. This
property is linked to the object's **mark_style** and **mark_mode**
properties (see ` **polyline_properties** `_).
    ****

**Specifier** **Marker Type** **+** Plus sign **o** Circle *****
  Asterisk **.** Point **x** Cross **'square'** or **'s'** Square
  **'diamond'** or **'d'** Diamond **^** Upward-pointing triangle **v**
  Downward-pointing triangle **>** Right-pointing triangle **<** Left-
  pointing triangle **'pentagram'** Five-pointed star (pentagram)
  **'none'** No marker (default)









Examples
~~~~~~~~


::

    x=1:0.1:10; // Init.
    plot(x,sin(x),'r.->') // plots a dash-dotted line with a right-pointing triangle centered on each points.
    clf();
    
    // If you specify a marker wihtout a line style, only the marker is drawn
    plot(x,sin(x),'d') // plots a dash-dotted line with a right-pointing triangle centered on each points.
    
    x=1:10; // Init.
    // combinations' order does not matter
    plot(x,x.*x,'*cya--') 
    
    //multiple plots with different LineSpecs
    clf();
    t=0:%pi/20:2*%pi;
    plot(t,sin(t),'ro-.',t,cos(t),'cya+',t,abs(sin(t)),'--mo')
     




See Also
~~~~~~~~

` **GlobalProperty** `_,` **plot** `_,` **clf** `_,



Author
~~~~~~

F.Leray

.. _
      : ://./graphics/plot.htm
.. _
      : ://./graphics/GlobalProperty.htm
.. _
      : ://./graphics/clf.htm
.. _
        : ://./graphics/polyline_properties.htm


