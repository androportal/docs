


reglin
======

Linear regression



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [a,b,sig]=reglin(x,y)




Description
~~~~~~~~~~~

solve the regression problem y=a*x+ b in the least square sense. `sig`
is the standard deviation of the residual. `x` and `y` are two
matrices of size `x(p,n)` and `y(q,n)`, where `n` is the number of
samples.

The estimator `a` is a matrix of size `(q,p)` and `b` is a vector of
size `(q,1)`


::

    // simulation of data for a(3,5) and b(3,1)
    x=`rand`_(5,100);
    aa=`testmatrix`_('magi',5);aa=aa(1:3,:);
    bb=[9;10;11]
    y=aa*x +bb*`ones`_(1,100)+ 0.1*`rand`_(3,100);
    // identification 
    [a,b,sig]=reglin(x,y);
    `max`_(`abs`_(aa-a))
    `max`_(`abs`_(bb-b))
    // an other example : fitting a polynomial
    f=1:100; x=[f.*f; f];
    y= [ 2,3]*x+ 10*`ones`_(f) + 0.1*`rand`_(f);
    [a,b]=reglin(x,y)




See Also
~~~~~~~~


+ `pinv`_ pseudoinverse
+ `leastsq`_ Solves non-linear least squares problems
+ `qr`_ QR decomposition


.. _leastsq: leastsq.html
.. _qr: qr.html
.. _pinv: pinv.html


