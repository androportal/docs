====
"fplot3d1"
====

Scilab Function Last update : 28/06/2004
**fplot3d1** - 3D gray or color level plot of a surface defined by a
function



Calling Sequence
~~~~~~~~~~~~~~~~

fplot3d1(xr,yr,f,[theta,alpha,leg,flag,ebox])
fplot3d1(xr,yr,f,<opt_args>)




Parameters
~~~~~~~~~~


+ **xr** : row vector of size n1.
+ **yr** : row vector of size n2.
+ **f** : external of type z=f(x,y).
+ **theta,alpha,leg,flag,ebox** : see **plot3d1** .
+ **<opt_args>** : see **plot3d** .




Description
~~~~~~~~~~~

**fplot3d1** plots a 3D gray or color level plot of a surface defined
by the external function **f** on the grid defined by **xr** and
**yr** .

Enter the command **fplot3d1()** to see a demo.



Examples
~~~~~~~~


::

    
    
    deff('z=f(x,y)','z=x^4-y^4')
    x=-3:0.2:3 ;y=x ;
    clf() ;fplot3d1(x,y,f,alpha=5,theta=31)  
     
      




See Also
~~~~~~~~

` **plot3d1** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/plot3d1.htm


