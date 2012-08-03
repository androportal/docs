====
"xclea"
====

Scilab Function Last update : April 1993
**xclea** - erase a rectangle



Calling Sequence
~~~~~~~~~~~~~~~~

xclea(x,y,w,h)




Parameters
~~~~~~~~~~


+ **x,y,w,h** : real values defining the rectangle.




Description
~~~~~~~~~~~

**xclea** clears the rectangle **[x,y,w,h]** (upper left point, width,
height) in the current graphics window.



Examples
~~~~~~~~


::

    
    
    x=[0:0.1:2*%pi]';
    plot2d(x,sin(x))
    xclea(1,1,1,1)
     
      




Author
~~~~~~

J.Ph.C.



