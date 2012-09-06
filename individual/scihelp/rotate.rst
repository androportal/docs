


rotate
======

rotation of a set of points



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xy1=rotate(xy,[theta,orig])




Arguments
~~~~~~~~~

:xy matrix of size (2,.).
: :xy1 matrix of size (2,.).
: :theta real, angle in radians; default value is 0.
: :orig center of the rotation [xc;yc]; default value is [0;0].
:



Description
~~~~~~~~~~~

`rotate` performs a rotation with angle `theta`:

`xy1(:,i) = M(theta) *(xy(:,i) - orig) + orig`

where `M` stands for the corresponding rotation matrix.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `xsetech`_([0,0,1,1],[-1,-1,1,1])
    xy=[(0:0.1:10);`sin`_(0:0.1:10)]/10;
    for i=2*%pi*(0:10)/10,
      [xy1]=rotate(xy,i);
      `xpoly`_(xy1(1,:),xy1(2,:),"lines")
    end




