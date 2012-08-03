====
"colorbar"
====

Scilab Function Last update : 15/04/2005
**colorbar** - draw a colorbar



Calling Sequence
~~~~~~~~~~~~~~~~

colorbar(umin, umax [, colminmax])




Parameters
~~~~~~~~~~


+ **umin** : real scalar, the minimum value associated with the plot
+ **umax** : real scalar, the maximum value associated with the plot
+ **colminmax** : (optional) a vector with 2 integer components




Description
~~~~~~~~~~~

Draw a colorbar for a plot3d, fec, Sgrayplot, etc... The function may
be called **BEFORE** the plot3d, fec, Sgrayplot,... because its sets
and changes the frame for the plot. This way the colorbar is not part
of the associated plot and so is not modified by a zoom or a rotation.

The optional argument **colminmax** may be used to precise the first
color (associated with umin) and the the last color (associated with
umax) of the current colormap. By default **colminmax=[1 nb_colors]**
where nb_colors is the number of colors of the current colormap.



Examples
~~~~~~~~


::

    
    // example 1
    x = linspace(0,1,81);
    z = cos(2*%pi*x)'*sin(2*%pi*x);
    zm = min(z); zM = max(z);
    xbasc()
    xset("colormap",jetcolormap(64))
    colorbar(zm,zM)
    Sgrayplot(x,x,z)
    xtitle("The function cos(2 pi x)sin(2 pi y)")
    
    // example 2 
    x = linspace(0,1,81);
    z = cos(2*%pi*x)'*sin(2*%pi*x);
    zm = min(z); zM = max(z);
    zz = abs(0.5*cos(2*%pi*x)'*cos(2*%pi*x));
    zzm = min(zz); zzM = max(zz);
    xbasc();
    xset("colormap",jetcolormap(64))
    new_styl = get("figure_style") == "new";
    if new_styl then, drawlater(), end
    subplot(2,2,1)
       colorbar(zm,zM)
       Sgrayplot(x,x,z, strf="031", rect=[0 0 1 1])
       xtitle("a Sgrayplot with a colorbar")
    subplot(2,2,2)
       colorbar(zm,zM)
       plot3d1(x,x,z)
       xtitle("a plot3d1 with a colorbar")
    subplot(2,2,3)
       colorbar(zzm,zzM)
       plot3d1(x,x,zz)
       xtitle("a plot3d1 with a colorbar")
    subplot(2,2,4)
       colorbar(zzm,zzM)
       Sgrayplot(x,x,zz, strf="031", rect=[0 0 1 1])
       xtitle("a Sgrayplot with a colorbar")
    if new_styl then, drawnow(), end
    
    
    // example 3
    x = linspace(0,1,81);
    zz = abs(0.5*cos(2*%pi*x)'*cos(2*%pi*x));
    zzm = min(zz); zzM = max(zz);
    [xf,yf,zf]=genfac3d(x,x,zz);
    nb_col = 64;
    xbasc()
    xset("colormap",hotcolormap(nb_col))
    new_styl = get("figure_style") == "new";
    if new_styl then, drawlater(), end
    colorbar(zzm,zzM)
    nbcol = xget("lastpattern")
    zcol = dsearch(zf, linspace(zzm, zzM, nb_col+1));
    plot3d(xf, yf, list(zf, zcol), flag = [-2 6 4])
    xtitle("a plot3d with shaded interpolated colors")
    if new_styl then, drawnow(), end
    xselect()
     




See Also
~~~~~~~~

` **colormap** `_,



Author
~~~~~~

B. Pincon

.. _
      : ://./graphics/colormap.htm


