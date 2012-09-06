


colorbar
========

draw a colorbar



Calling Sequence
~~~~~~~~~~~~~~~~


::

    colorbar(umin, umax [, colminmax, fmt])




Arguments
~~~~~~~~~

:umin real scalar, the minimum value associated with the plot
: :umax real scalar, the maximum value associated with the plot
: :colminmax (optional) a vector with 2 integer components
: :fmt (optional) a string to set up the display format for colorbar
  graduations
:



Description
~~~~~~~~~~~

Draw a colorbar for a plot3d, fec, Sgrayplot, etc... The function may
be called **BEFORE** the plot3d, fec, Sgrayplot,... because its sets
and changes the frame for the plot. This way the colorbar is not part
of the associated plot and so is not modified by a zoom or a rotation.

The optional argument `colminmax` may be used to precise the first
color (associated with umin) and the last color (associated with umax)
of the current colormap. By default `colminmax=[1 nb_colors]` where
nb_colors is the number of colors of the current colormap.

The optional argument `fmt` is a string containing a C-format, like
`"%.2f"`, `"%e"`, etc...

For the 2 optional arguments you can use the syntax `keyword=value`
(see the last example).



Sample
~~~~~~



Examples
~~~~~~~~


::

    // example 1
    x = `linspace`_(0,1,81);
    z = `cos`_(2*%pi*x)'*`sin`_(2*%pi*x);
    zm = `min`_(z); zM = `max`_(z);
    `clf`_()
    `xset`_("colormap",`jetcolormap`_(64))
    colorbar(zm,zM)
    `Sgrayplot`_(x,x,z)
    `xtitle`_("The function cos(2 pi x)sin(2 pi y)")
    
    // example 2 
    x = `linspace`_(0,1,81);
    z = `cos`_(2*%pi*x)'*`sin`_(2*%pi*x);
    zm = `min`_(z); zM = `max`_(z);
    zz = `abs`_(0.5*`cos`_(2*%pi*x)'*`cos`_(2*%pi*x));
    zzm = `min`_(zz); zzM = `max`_(zz);
    `clf`_();
    `xset`_("colormap",`jetcolormap`_(64))
    
    `drawlater`_() ;
    `subplot`_(2,2,1)
       colorbar(zm,zM)
       `Sgrayplot`_(x,x,z, strf="031", rect=[0 0 1 1])
       `xtitle`_("a Sgrayplot with a colorbar")
    `subplot`_(2,2,2)
       colorbar(zm,zM)
       `plot3d1`_(x,x,z)
       `xtitle`_("a plot3d1 with a colorbar")
    `subplot`_(2,2,3)
       colorbar(zzm,zzM)
       `plot3d1`_(x,x,zz)
       `xtitle`_("a plot3d1 with a colorbar")
    `subplot`_(2,2,4)
       colorbar(zzm,zzM)
       `Sgrayplot`_(x,x,zz, strf="031", rect=[0 0 1 1])
       `xtitle`_("a Sgrayplot with a colorbar")
    `drawnow`_() ;
    
    // example 3
    x = `linspace`_(0,1,81);
    zz = `abs`_(0.5*`cos`_(2*%pi*x)'*`cos`_(2*%pi*x));
    zzm = `min`_(zz); zzM = `max`_(zz);
    [xf,yf,zf]=`genfac3d`_(x,x,zz);
    nb_col = 64;
    `clf`_()
    `xset`_("colormap",`hotcolormap`_(nb_col))
    `drawlater`_() ;
    colorbar(zzm,zzM,[1, nb_col],fmt="%.1f")
    nbcol = `xget`_("lastpattern")
    zcol = `dsearch`_(zf, `linspace`_(zzm, zzM, nb_col+1));
    `plot3d`_(xf, yf, `list`_(zf, zcol), flag = [-2 6 4])
    `xtitle`_("a plot3d with shaded interpolated colors")
    `drawnow`_() ;
    `show_window`_()




See Also
~~~~~~~~


+ `colormap`_ using colormaps


.. _colormap: colormap.html


