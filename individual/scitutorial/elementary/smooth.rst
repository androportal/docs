====
"smooth"
====

Scilab Function Last update : April 1993
**smooth** - smoothing by spline functions



Calling Sequence
~~~~~~~~~~~~~~~~

[pt]=smooth(ptd [,step])




Parameters
~~~~~~~~~~


+ **ptd** : (2xn) real vector
+ **step** : real (discretization step of abscissae)
+ **pt** : (2xn) real vector




Description
~~~~~~~~~~~

this function computes interpolation by spline functions for a given
set of points in the plane. The coordinates are
**(ptd(1,i),ptd(2,i))** . The components **ptd(1,:)** must be in
ascending order. The default value for the step is
**abs(maxi(ptd(1,:))-mini(ptd(1,:)))/100**



Examples
~~~~~~~~


::

    
    
    x=[1 10 20 30 40];
    y=[1 30 -10 20 40];
    plot2d(x',y',[3],"011"," ",[-10,-40,50,50]);
    yi=smooth([x;y],0.1);
    plot2d(yi(1,:)',yi(2,:)',[1],"000");
     
      




See Also
~~~~~~~~

` **splin** `_,` **interp** `_,` **interpln** `_,

.. _
      : ://./elementary/interp.htm
.. _
      : ://./elementary/interpln.htm
.. _
      : ://./elementary/splin.htm


