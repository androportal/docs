====
"champ1"
====

Scilab Function Last update : 28/06/2004
**champ1** - 2D vector field plot with colored arrows



Calling Sequence
~~~~~~~~~~~~~~~~

champ1(x,y,fx,fy,[arfact,rect,strf])




Parameters
~~~~~~~~~~


+ **x,y** : two vectors which define the grid.
+ **fx** : a matrix which describes the x component of the vector
  field. **fx(i,j)** is the x component of the vector field at point
  **(x(i),y(j))** .
+ **fy** : a matrix which describes the y component of the vector
  field. **fy(i,j)** is the y component of the vector field at point
  **(x(i),y(j))** .
+ **arfact** : an optional argument of type real which gives a scale
  factor for the display of the arrow heads on the plot (default value
  is 1.0).
+ **rect** : a vector **rect=[xmin,ymin,xmax,ymax]** which gives the
  boundaries of the graphics frame to use.
+ **frameflag** : controls the computation of the actual coordinate
  ranges from the minimal requested values. The associated value should
  be an integer ranging from 0 to 8.
+ **axesflag** : specifies how the axes are drawn. The associated
  value should be an integer ranging from 0 to 5.
+ **strf** : a string of length 3 "xyz" which has the same meaning as
  the **strf** parameter of **plot2d** . The first character x has no
  effect with **champ1** .




Description
~~~~~~~~~~~

**champ1** draws a 2D vector field with colored arrows. The color of
the arrows depends on the intensity of the field.

If you want arrows proportional to the intensity of the field, use
**champ** .

Enter the command **champ1()** to see a demo.



Examples
~~~~~~~~


::

    
    
    champ1(-5:5,-5:5,rand(11,11),rand(11,11),rect=[-10,-10,10,10],arfact=2)
     
      




See Also
~~~~~~~~

` **champ** `_,` **fchamp** `_,` **plot2d** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/fchamp.htm
.. _
      : ://./graphics/champ.htm
.. _
      : ://./graphics/plot2d.htm


