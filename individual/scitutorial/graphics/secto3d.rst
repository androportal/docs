====
"secto3d"
====

Scilab Function Last update : April 1993
**secto3d** - 3D surfaces conversion



Calling Sequence
~~~~~~~~~~~~~~~~

[m[,x]]=secto3d(seclist,npas)
[m]=secto3d(seclist ,x)




Parameters
~~~~~~~~~~


+ **seclist** : a list whose elements are (2,.) matrices
+ **npas** : an integer
+ **m** : a matrix
+ **x** : a vector




Description
~~~~~~~~~~~

Considering a surface given through a list **seclist** of sections in
the **(x,z)** plane **[m [,x]]=secto3d(seclist [,npas])** returns a
matrix **m** which contains a regular discretization of the surface.

**-**The i-th row of the matrix m corresponds to the i-th section
**-**The j-th column of m corresponds to the x(j)


Each section **seclist(i)** is described by a (2,.) matrix which gives
respectively the x and z coordinates of points.

**[m]=secto3d(seclist ,x)** : in that case the x-vector gives the
discretization of the x-axis for all the sections



See Also
~~~~~~~~

` **plot3d** `_,



Author
~~~~~~

Steer S.; ;

.. _
      : ://./graphics/plot3d.htm


