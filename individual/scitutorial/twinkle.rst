


twinkle
=======

is used to have a graphics entity twinkle



Calling Sequence
~~~~~~~~~~~~~~~~


::

    twinkle(h,[n])




Arguments
~~~~~~~~~

:h handle of a graphics entity.
: :n integer.
:



Description
~~~~~~~~~~~

`twinkle` let the graphics entity given by its handle `h` twinkle. It
can be used to find the graphics object corresponding to a graphics
handle in the graphics window. By default the graphics entity twinkles
5 times, but you can change this by using optional argument `n`.



Examples
~~~~~~~~


::

    x=`linspace`_(-2*%pi,2*%pi,100)';
    `plot2d`_(x,[`sin`_(x),`cos`_(x)]);
    e=`gce`_();
    p1=e.children(1);
    p2=e.children(2);
    // cos plot twinkle
    twinkle(p1)
    // sin plot twinkle 10 times
    twinkle(p2,10)
    // axes twinkle
    twinkle(`gca`_())




See Also
~~~~~~~~


+ `graphics_entities`_ description of the graphics entities data
  structures


.. _graphics_entities: graphics_entities.html


