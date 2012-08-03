====
"contourf"
====

Scilab Function Last update : April 1993
**contourf** - filled level curves of a surface on a 2D plot



Calling Sequence
~~~~~~~~~~~~~~~~

contourf(x,y,z,nz,[style,strf,leg,rect,nax])




Parameters
~~~~~~~~~~


+ **x,y** : two real row vectors of size n1 and n2: the grid.
+ **z** : real matrix of size (n1,n2), the values of the function.
+ **nz** : the level values or the number of levels.

    + **- ** If **nz** is an integer, its value gives the number of level
      curves equally spaced from zmin to zmax as follows:

::

        
        
         z= zmin + (1:nz)*(zmax-zmin)/(nz+1)
           
                        

      Note that the **zmin** and **zmax** levels are not drawn (generically
      they are reduced to points) but they can be added with

::

        
        
         [im,jm] = find(z == zmin);     // or zmax 
         plot2d(x(im)',y(jm)',-9,"000")
           
                        


    + **- ** If **nz** is a vector, **nz(i)** gives the value of the ith
      level curve.

+ **style,strf,leg,rect,nax** : see **plot2d** . The argument
  **style** gives the colors which are to be used for level curves. It
  must have the same size as the number of levels.




Description
~~~~~~~~~~~

**contourf** paints surface between two consecutives level curves of a
surface **z=f(x,y)** on a 2D plot. The values of **f(x,y)** are given
by the matrix **z** at the grid points defined by **x** and **y** .

You can change the format of the floating point number printed on the
levels by using **xset("fpf",string)** where **string** gives the
format in C format syntax (for example **string="%.3f"** ). Use
**string=""** to switch back to default format.

Enter the command **contour2d()** to see a demo.



Examples
~~~~~~~~


::

    
    
    contourf(1:10,1:10,rand(10,10),5,1:5,"011"," ",[0,0,11,11])
     
      




See Also
~~~~~~~~

` **contour** `_,` **fcontour** `_,` **fcontour2d** `_,`
**contour2di** `_,` **plot2d** `_,` **xset** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/contour.htm
.. _
      : ://./graphics/xset.htm
.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/fcontour.htm
.. _
      : ://./graphics/contour2di.htm
.. _
      : ://./graphics/fcontour2d.htm


