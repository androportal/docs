


LineSpec
========

to quickly customize the lines appearance in a plot



Description
~~~~~~~~~~~

The LineSpec is an optional argument that can be used inside a plot
command to customize each new line aspect. It has to be given as a
concatenated string containing information about color, line style or
markers. It is very useful to quickly specify such basic line
properties.

To specify a red longdash-dot with diamond marker, the string can be
'r-.diam'. As you can see, a full complete spelling of each property
value is not required but the string, which is a concatenation (in any
order) of these three types of properties , must remain unambiguous.
Furthermore, the string specification is not case sensitive.

Here is a complete list of the `LineSpec` types you can specify (using
`plot`_).

:LineStyle: a string defining the line style. This property is linked
  to the object's `line_style` property (see `polyline_properties`_).
  `Specifier` `Line Style` `-` Solid line (default) `--` Dashed line `:`
  Dotted line `-.` Dash-dotted line
: :Color: a string defining the line color. This property is linked to
  the object's `foreground` property (see `polyline_properties`_).
  `Specifier` `Color` `r` Red `g` Green `b` Blue `c` Cyan `m` Magenta
  `y` Yellow `k` Black `w` White
: : A default color table is used to color plotted curves if you do
  not specify a color (neither with `LineSpec` nor with
  `GlobalProperty`_). When drawing multiple lines, the plot command
  automatically cycles through this table. Here are the used colors:
: : `R` `G` `B` 0. 0. 1. 0. 0.5 0. 1. 0. 0. 0. 0.75 0.75 0.75 0. 0.75
  0.75 0.75 0. 0.25 0.25 0.25
: :Marker type: A string defining the marker type. note that if you
  specify a marker wihtout a line style, only the marker is drawn. This
  property is linked to the object's `mark_style` and `mark_mode`
  properties (see `polyline_properties`_). `Specifier` `Marker Type` `+`
  Plus sign `o` Circle `*` Asterisk `.` Point `x` Cross `'square'` or
  `'s'` Square `'diamond'` or `'d'` Diamond `^` Upward-pointing triangle
  `v` Downward-pointing triangle `>` Right-pointing triangle `<` Left-
  pointing triangle `'pentagram'` Five-pointed star (pentagram) `'none'`
  No marker (default)
:



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=1:0.1:10; // Init.
    `plot`_(x,`sin`_(x),'r.->') // plots a dash-dotted line with a right-pointing triangle centered on each points.
    `clf`_();
    
    // If you specify a marker wihtout a line style, only the marker is drawn
    `plot`_(x,`sin`_(x),'d') // plots a dash-dotted line with a right-pointing triangle centered on each points.
    
    x=1:10; // Init.
    // combinations' order does not matter
    `plot`_(x,x.*x,'*cya--') 
    
    //multiple plots with different LineSpecs
    `clf`_();
    t=0:%pi/20:2*%pi;
    `plot`_(t,`sin`_(t),'ro-.',t,`cos`_(t),'cya+',t,`abs`_(`sin`_(t)),'--mo')




See Also
~~~~~~~~


+ `GlobalProperty`_ to customize the objects appearance (curves,
  surfaces...) in a plot or surf command.
+ `plot`_ 2D plot
+ `clf`_ clear or reset the current graphic figure (window) to default
  values


.. _GlobalProperty: GlobalProperty.html
.. _clf: clf.html
.. _polyline_properties: polyline_properties.html
.. _plot: plot.html


