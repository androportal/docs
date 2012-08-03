====
"interpln"
====

Scilab Function Last update : April 1993
**interpln** - linear interpolation



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=interpln(xyd,x)




Parameters
~~~~~~~~~~


+ **xyd** : 2 row matrix (xy coordinates of points)
+ **x** : vector (abscissae)
+ **y** : vector (y-axis values)




Description
~~~~~~~~~~~

given **xyd** a set of points in the xy-plane which increasing
abscissae and **x** a set of abscissae, this function computes **y**
the corresponding y-axis values by linear interpolation.



Examples
~~~~~~~~


::

    
    
    x=[1 10 20 30 40];
    y=[1 30 -10 20 40];
    plot2d(x',y',[-3],"011"," ",[-10,-40,50,50]);
    yi=interpln([x;y],-4:45);
    plot2d((-4:45)',yi',[3],"000");
     
      




See Also
~~~~~~~~

` **splin** `_,` **interp** `_,` **smooth** `_,

.. _
      : ://./elementary/interp.htm
.. _
      : ://./elementary/smooth.htm
.. _
      : ://./elementary/splin.htm


