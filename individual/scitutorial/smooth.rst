


smooth
======

smoothing by spline functions



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [pt]=smooth(ptd [,step])




Arguments
~~~~~~~~~

:ptd (2xn) real vector
: :step real (discretization step of abscissae)
: :pt (2xn) real vector
:



Description
~~~~~~~~~~~

this function computes interpolation by spline functions for a given
set of points in the plane. The coordinates are `(ptd(1,i),ptd(2,i))`.
The components `ptd(1,:)` must be in ascending order. The default
value for the step is `abs(max(ptd(1,:))-min(ptd(1,:)))/100`



Examples
~~~~~~~~


::

    x=[1 10 20 30 40];
    y=[1 30 -10 20 40];
    `plot2d`_(x',y',[3],"011"," ",[-10,-40,50,50]);
    yi=smooth([x;y],0.1);
    `plot2d`_(yi(1,:)',yi(2,:)',[1],"000");




See Also
~~~~~~~~


+ `splin`_ cubic spline interpolation
+ `interp`_ cubic spline evaluation function
+ `interpln`_ linear interpolation


.. _splin: splin.html
.. _interp: interp.html
.. _interpln: interpln.html


