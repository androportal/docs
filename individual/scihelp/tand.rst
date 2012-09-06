


tand
====

tangent, argument in degree.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=tand(x)




Arguments
~~~~~~~~~

:x real vector or matrix
: :t real vector or matrix
:



Description
~~~~~~~~~~~

The elements of `t` are the tangent of the elements of `x` (in
degree).



Examples
~~~~~~~~


::

    mod=`ieee`_();`ieee`_(2);
    x=[0,30 45 60 90 360];
    tand(x);
    `ieee`_(mod);




See Also
~~~~~~~~


+ `atan`_ 2-quadrant and 4-quadrant inverse tangent
+ `tan`_ tangent


.. _tan: tan.html
.. _atan: atan.html


