


fec
===

pseudo-color plot of a function defined on a triangular mesh



Calling Sequence
~~~~~~~~~~~~~~~~


::

    fec(x,y,triangles,func,<opt_args>)
    fec(x,y,triangles,func,[strf,leg,rect,nax,zminmax,colminmax,colout,mesh])




Arguments
~~~~~~~~~

:x,y two vectors of size `n`, `(x(i),y(i))` gives the coordinates of
  node `i`
: :func a vector of size `n` : `func(i)` gives the value at node `i`
  of the function for which we want the pseudo-color plot.
: :triangles is a `[Ntr,5]` matrix. Each line of `triangles` specifies
  a triangle of the mesh `triangle(j) =
  [number,node1,node2,node3,flag]`. `node1,node2,node3` are the number
  of the nodes which constitutes the triangle. number is the number of
  the triangle and flag is an integer not used in the fec function
: :<opt_args> This represents a sequence of statements `key1=value1,
  key2=value2`,... where `key1`, `key2,...` can be one of the following:
  strf, leg, rect, nax, zminmax, colminmax, colout, mesh (see `plot2d`_
  for the 4 first ones).
: :strf,leg,rect,nax see plot2d
: :zminmax vector with 2 components [zmin zmax] (useful in particular
  for animation)
: :colminmax vector of 2 positives integers [colmin colmax]
: :colout vector of 2 integers [under_min_col upper_max_col]
: :mesh boolean scalar, default value %f (must be true if you want
  also display the mesh)
:



Description
~~~~~~~~~~~

This function is the good one to draw linear triangular finite element
solutions or simply to display a function defined on a triangulation.
The color interpolation is done through software computation and so it
is not too fast.

The function `colorbar`_ may be used to see the color scale (see the
example section).

The `zminmax` argument gives the z values associated with the first
and the last color (of the current colormap). More exactly if the
colormap have nc colors and if we note *dz = (zmax-zmin)/nc*, then the
part of the triangulation where *zmin + (i-1)dz <= z < zmin + i dz* is
filled with the color *i*). By default *zmin = min(func)* and *zmax =
max(func)*. If you want to do an animation with func values that varie
in time, take for zmin and zmax the global minimum and maximum or
something close.

The `colout` argument lets the user choosing the colors for the 2
extremes regions *{func < zmin}* and *{func > zmax}*, `under_min_col`
and `upper_max_col` may be equal (independantly) to:

:-1 in this case the same color than in the neighbouring zone is used
  (CAUTION: you do not see that the corresponding limit is crossed),
  this is the default case.
: :0 in this case the extreme region is not painting at all.
: :k (k being a valid index to a color of the current colormap) the
  extreme region is painting in color k.
:

If you do not want to use the complete colormap you may use the
`colminmax` argument with *1 <= colmin < colmax <= nc* (nc being the
number of colors of the current colormap) so as to use only the
[colmin,colmax] sub-part of the colormap. (by default all the colors
of the colormap are used).

See the demo files `demos/fec`:

`fec.ex1` is a simple demo file in which a mesh and a function on that
mesh is completely built in Scilab syntax

`fec.ex2` is an example for which the mesh and the function value
where computed by an external mesh builder (amdba type mesh) and an
external program. A set of macros ( provided in file `macros.sci`) can
be used to read the data files in Scilab and plot the results.



Sample
~~~~~~



Examples
~~~~~~~~


::

    // define a mini triangulation (4 vertices, 2 triangles)
    x = [0 1 0 -1];
    y = [0 0 1  1];
    T = [1 1 2 3 1;
         2 3 4 1 1];
    z = [0 1 0 -1];  // values of the func at each vertices
    `clf`_()
    `xset`_("colormap",`jetcolormap`_(64))
    `subplot`_(1,2,1)
      `colorbar`_(-1,1)
      fec(x,y,T,z,strf="040",`mesh`_=%t)
      `xtitle`_("fec example (with the mesh)")
    `subplot`_(1,2,2)
      `colorbar`_(-1,1)
      fec(x,y,T,z,strf="040")  // rmq: mesh=%f by default
      `xtitle`_("fec example (without the mesh)")
    `show_window`_()



::

    // define a mini triangulation (4 vertices, 2 triangles)
    x = [0 1 0 -1];
    y = [0 0 1  1];
    T = [1 1 2 3 1;
         2 3 4 1 1];
    z = [0 1 0 -1];  // values of the func at each vertices
    // this example shows the effect of zminmax and uses the
    // previous example data (you have to execute the it before)
    `clf`_()
    `xset`_("colormap",`jetcolormap`_(64))
    `colorbar`_(-0.5,0.5)  // be careful colorbar must be set by hands !
    fec(x,y,T,z,strf="040", zminmax=[-0.5 0.5], `mesh`_=%t)
    `xtitle`_("fec example : using zminmax argument")
    `show_window`_()



::

    // define a mini triangulation (4 vertices, 2 triangles)
    x = [0 1 0 -1];
    y = [0 0 1  1];
    T = [1 1 2 3 1;
         2 3 4 1 1];
    z = [0 1 0 -1];  // values of the func at each vertices
    // this example shows the effect of zminmax and colout. It uses
    // also the data of the first example (you have to execute the it before)
    `clf`_()
    `xset`_("colormap",`jetcolormap`_(64))
    `subplot`_(2,2,1)
      `colorbar`_(-0.5,0.5)
      fec(x,y,T,z,strf="040", zminmax=[-0.5 0.5], colout=[0 0], `mesh`_=%t)
      `xtitle`_("fec example : using zminmax and colout =[0 0]")
    `subplot`_(2,2,2)
      `colorbar`_(-0.5,0.5)
      fec(x,y,T,z,strf="040", zminmax=[-0.5 0.5], colout=[32 32], `mesh`_=%t)
      `xtitle`_("fec example : using zminmax and colout =[32 32]")
    `subplot`_(2,2,3)
      `colorbar`_(-0.5,0.5)
      fec(x,y,T,z,strf="040", zminmax=[-0.5 0.5], colout=[-1 0], `mesh`_=%t)
      `xtitle`_("fec example : using zminmax and colout =[-1 0]")
    `subplot`_(2,2,4)
      `colorbar`_(-0.5,0.5)
      fec(x,y,T,z,strf="040", zminmax=[-0.5 0.5], colout=[0 -1], `mesh`_=%t)
      `xtitle`_("fec example : using zminmax and colout =[0 -1]")
    `show_window`_()



::

    // define a mini triangulation (4 vertices, 2 triangles)
    x = [0 1 0 -1];
    y = [0 0 1  1];
    T = [1 1 2 3 1;
         2 3 4 1 1];
    z = [0 1 0 -1];  // values of the func at each vertices
    
    // this example shows a feature from colminmax:
    // playing with 2 colormaps for 2 subplots. It
    // uses also the data of the first example.
    `clf`_()
    `xset`_("colormap",[`hotcolormap`_(64);`jetcolormap`_(64)])
    `subplot`_(1,2,1)
      `colorbar`_(-1,1,[1 64])
      fec(x,y,T,z,strf="040", colminmax=[1 64], `mesh`_=%t)
      `xtitle`_("fec using the hot colormap")
    `subplot`_(1,2,2)
      `colorbar`_(-1,1,[65 128])
      fec(x,y,T,z,strf="040", colminmax=[65 128], `mesh`_=%t)
      `xtitle`_("fec using the jet colormap")
    `show_window`_()




See Also
~~~~~~~~


+ `colorbar`_ draw a colorbar
+ `Sfgrayplot`_ smooth 2D plot of a surface defined by a function
  using colors
+ `Sgrayplot`_ smooth 2D plot of a surface using colors


.. _Sfgrayplot: Sfgrayplot.html
.. _plot2d: plot2d.html
.. _colorbar: colorbar.html
.. _Sgrayplot: Sgrayplot.html


