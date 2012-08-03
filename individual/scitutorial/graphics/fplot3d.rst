====
"fplot3d"
====

Scilab Function Last update : 28/06/2004
**fplot3d** - 3D plot of a surface defined by a function



Calling Sequence
~~~~~~~~~~~~~~~~

fplot3d(xr,yr,f,[theta,alpha,leg,flag,ebox])
fplot3d(xr,yr,f,<opt_args>)




Parameters
~~~~~~~~~~


+ **xr** : row vector of size n1.
+ **yr** : row vector of size n2.
+ **f** : external of type z=f(x,y).
+ **theta,alpha,leg,flag,ebox** : see **plot3d** .
+ **<opt_args>** : see **plot3d** .




Description
~~~~~~~~~~~

**fplot3d** plots a surface defined by the external function **f** on
the grid defined by **xr** and **yr** .

Enter the command **fplot3d()** to see a demo.



Examples
~~~~~~~~


::

    
    
    deff('z=f(x,y)','z=x^4-y^4')
    x=-3:0.2:3 ;y=x ;
    clf() ;fplot3d(x,y,f,alpha=5,theta=31)  
     
      




See Also
~~~~~~~~

` **plot3d** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/plot3d.htm


