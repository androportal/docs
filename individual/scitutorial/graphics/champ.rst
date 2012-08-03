====
"champ"
====

Scilab Function Last update : 16/12/2004
**champ** - 2D vector field plot



Calling Sequence
~~~~~~~~~~~~~~~~

champ(x,y,fx,fy,[arfact,rect,strf])
champ(x,y,fx,fy,<opt_args>)




Parameters
~~~~~~~~~~


+ **x,y** : two vectors which define the grid.
+ **fx** : a matrix which describes the x component of the vector
  field. **fx(i,j)** is the x component of the vector field at point
  **(x(i),y(j))** .
+ **fy** : a matrix which describes the y component of the vector
  field. **fy(i,j)** is the y component of the vector field at point
  **(x(i),y(j))** .
+ **<opt_args>** : This represents a sequence of statements
  **key1=value1,key2=value2** ,... where **key1** , **key2,...** can be
  one of the following: arfact, rect, strf (see below).
+ **arfact** : an optional argument of type real which gives a scale
  factor for the display of the arrow heads on the plot (default value
  is 1.0).
+ **rect** : a vector **rect=[xmin,ymin,xmax,ymax]** which gives the
  boundaries of the graphics frame to use.
+ **strf** : a string of length 3 "xyz" which has the same meaning as
  the **strf** parameter of **plot2d** . The first character x has no
  effect with **champ** .




Description
~~~~~~~~~~~

**champ** draws a 2D vector field. The length of the arrows is
proportional to the intensity of the field.

If you want colored arrows with the color of the arrows depending on
the intensity of the field, use **champ1** .

Enter the command **champ()** to see a demo.



Examples
~~~~~~~~


::

    
    
    // using rect as plot boundaries 
    champ(-5:5,-5:5,rand(11,11),rand(11,11),rect=[-10,-10,10,10],arfact=2)
    // using (x,y) to get boundaries 
    clf()
    champ(-5:5,-5:5,rand(11,11),rand(11,11),2,[-10,-10,10,10],"021")
     
      




See Also
~~~~~~~~

` **champ1** `_,` **fchamp** `_,` **plot2d** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/champ1.htm
.. _
      : ://./graphics/fchamp.htm
.. _
      : ://./graphics/plot2d.htm


