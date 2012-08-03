====
"fec"
====

Scilab Function Last update : 16/12/2004
**fec** - pseudo-color plot of a function defined on a triangular mesh



Calling Sequence
~~~~~~~~~~~~~~~~

fec(x,y,triangles,func,<opt_args>)
fec(x,y,triangles,func,[strf,leg,rect,nax,zminmax,colminmax,colout,mes
  h])




Parameters
~~~~~~~~~~


+ **x,y** : two vectors of size **n** , **(x(i),y(i))** gives the
  coordinates of node **i**
+ **func** : a vector of size **n** : **func(i)** gives the value at
  node **i** of the function for which we want the pseudo-color plot.
+ **triangles** : is a **[Ntr,5]** matrix. Each line of **triangles**
  specifies a triangle of the mesh **triangle(j) =
  [number,node1,node2,node3,flag]** . **node1,node2,node3** are the
  number of the nodes which constitutes the triangle. number is the
  number of the triangle and flag is an integer not used in the fec
  function
+ **<opt_args>** : This represents a sequence of statements
  **key1=value1, key2=value2** ,... where **key1** , **key2,...** can be
  one of the following: strf, leg, rect, nax, zminmax, colminmax,
  colout, mesh (see ` **plot2d** `_ for the 4 first ones).
+ **strf,leg,rect,nax** : see plot2d
+ **zminmax** : vector with 2 components [zmin zmax] (useful in
  particular for animation)
+ **colminmax** : vector of 2 positives integers [colmin colmax]
+ **colout** : vector of 2 integers [under_min_col upper_max_col]
+ **mesh** : boolean scalar, default value %f (must be true if you
  want also display the mesh)




Description
~~~~~~~~~~~

This function is the good one to draw linear triangular finite element
solutions or simply to display a function defined on a triangulation.
The color interpolation is done through software computation and so it
is not too fast.

The function ` **colorbar** `_ may be used to see the color scale (see
the example section).

The **zminmax** argument gives the z values associated with the first
and the last color (of the current colormap). More exactly if the
colormap have nc colors and if we note *dz = (zmax-zmin)/nc*, then the
part of the triangulation where *zmin + (i-1)dz <= z < zmin + i dz* is
filled with the color *i*). By default *zmin = min(func)* and *zmax =
max(func)*. If you want to do an animation with func values that varie
in time, take for zmin and zmax the global minimum and maximum or
something close.

The **colout** argument lets the user choosing the colors for the 2
extremes regions *{func < zmin}* and *{func > zmax}*,
**under_min_col** and **upper_max_col** may be equal (independantly)
to:

