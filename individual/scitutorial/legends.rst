


legends
=======

draw graph legend



Calling Sequence
~~~~~~~~~~~~~~~~


::

    legends(strings,style,<opt_args>)




Arguments
~~~~~~~~~

:strings n vector of strings, strings(i) is the legend of the ith
  curve Starting from Scilab 5.2, it is possible to write `LaTeX or
  MathML expression`_.
: :style integer row vector of size n (the plot styles, third
  parameter of plot2d) or an integer 2 x n matrix, style(1,k) contains
  the plot style for the kth curve and style(2,k) contains the line
  style (if style(1,k)>0) or mark color (if style(1,k)<0).
: :<opt_args> This represents a sequence of statements
`key1=value1,key2=value2`,... where `key1`, `key2,...` can be one of
the following:
    :opt specify where to draw the legends; this parameter may be an
    integer flag (or equivalently a string flag) or a vector [x,y] which
    gives the coordinates of the upper left corner of the legend box. In
    the first case the possible values are:
        :1 or "ur" the legends are drawn in the upper right-hand corner.
        : :2 or "ul" the legends are drawn in the upper left-hand corner.
        : :3 or "ll" the legends are drawn in the lower left-hand corner.
        : :4 or "lr" the legends are drawn in the lower right-hand corner.
        : :5 or "?" interactive placement with the mouse (default).
        : :6 or "below" the legends are drawn under the graph (which is
          resized accordingly).
        :

    : :with_box a boolean (default value %t) which sets ot not the drawing
      of the box.
    : :font_size an integer (default value 1) which sets the size of the
      font used for the names in the legend.
    :

:



Description
~~~~~~~~~~~

Puts a legend on the current plot using the specified strings as
labels.

In the interactive placement (opt=5 or opt="?") move the legend box
with the mouse and press the left button to release it.

This function allows more flexible placement of the legends than the
leg plot2d argument.



Sample
~~~~~~



Examples
~~~~~~~~


::

    // Example 1
    t=0:0.1:2*%pi;
    `plot2d`_(t,[`cos`_(t'),`cos`_(2*t'),`cos`_(3*t')],[-1,2 3]);  
    legends(['cos(t)';'cos(2*t)';'cos(3*t)'],[-1,2 3],opt="lr")
    
    `scf`_() ;
    `xset`_("line style",2);`plot2d`_(t,`cos`_(t),style=5);
    `xset`_("line style",4);`plot2d`_(t,`sin`_(t),style=3);
    legends(["sin(t)";"cos(t)"],[[5;2],[3;4]], with_box=%f, opt="?")



::

    // Example 2
    `scf`_() ;
    `subplot`_(221)
    t=0:0.1:2*%pi;
    `plot2d`_(t,[`cos`_(t'),`cos`_(2*t'),`cos`_(3*t')],[-1,2 3]);  
    legends(['cos(t)';'cos(2*t)';'cos(3*t)'],[-1,2 3], opt=3 )
    
    `subplot`_(222)
    `xset`_("line style",2);`plot2d`_(t,`cos`_(t),style=5);
    `xset`_("line style",4);`plot2d`_(t,`sin`_(t),style=3);
    legends(["sin(t)";"cos(t)"],[[5;2],[3;4]], with_box=%f, opt=6 )
    
    `subplot`_(223)
    `xset`_("line style",2);`plot2d`_(t,`cos`_(t),style=5);
    `xset`_("line style",4);`plot2d`_(t,`sin`_(t),style=3);
    legends(["sin(t)";"cos(t)"],[[5;2],[3;4]], with_box=%f, opt=1, font_size=2 )
    
    `subplot`_(224)
    t=0:0.1:2*%pi;
    `plot2d`_(t,[`cos`_(t'),`cos`_(2*t'),`cos`_(3*t')],[-1,2 3]);  
    legends(['cos(t)';'cos(2*t)';'cos(3*t)'],[-1,2 3], opt=2, font_size=1 )




See Also
~~~~~~~~


+ `plot2d`_ 2D plot
+ `xstring`_ draw strings
+ `xtitle`_ add titles on a graphics window
+ `legend`_ draw graph legend


.. _xtitle: xtitle.html
.. _LaTeX or MathML expression: math_rendering_features_in_graphic.html
.. _xstring: xstring.html
.. _plot2d: plot2d.html
.. _legend: legend.html


