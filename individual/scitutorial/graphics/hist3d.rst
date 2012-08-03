====
"hist3d"
====

Scilab Function Last update : April 1993
**hist3d** - 3D representation of a histogram



Calling Sequence
~~~~~~~~~~~~~~~~

hist3d(f,[theta,alpha,leg,flag,ebox])
hist3d(list(f,x,y),[theta,alpha,leg,flag,ebox])




Parameters
~~~~~~~~~~


+ **f** : matrix of size (m,n) defining the histogram
  **f(i,j)=F(x(i),y(j))** , where **x** and **y** are taken as **0:m**
  and **0:n** .
+ **list(f,x,y) ** : where f is a matrix of size (m,n)defining the
  histogram **f(i,j)=F(x(i),y(j))** , with **x** and **y** vectors of
  size (1,n+1) and (1,m+1).
+ **theta,alpha,leg,flag,ebox** : see **plot3d** .




Description
~~~~~~~~~~~

**hist3d** represents a 2d histogram as a 3D plot. The values are
associated to the intervals **[x(i) x(i+1)[ X [y(i) y(i+1)[** .

Enter the command **hist3d()** to see a demo.



See Also
~~~~~~~~

` **histplot** `_,` **plot3d** `_,



Author
~~~~~~

Steer S. & JPhilippe C.

.. _
      : ://./graphics/histplot.htm
.. _
      : ://./graphics/plot3d.htm


