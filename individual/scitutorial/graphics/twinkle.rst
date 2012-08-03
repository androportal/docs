====
"twinkle"
====

Scilab Function Last update : 13/04/2004
**twinkle** - is used to have a graphics entity twinkle



Calling Sequence
~~~~~~~~~~~~~~~~

twinkle(h,[n])




Parameters
~~~~~~~~~~


+ **h** : handle of a graphics entity.
+ **n** : integer.




Description
~~~~~~~~~~~

**twinkle** let the graphics entity given by its handle **h** twinkle.
It can be used to find the graphics object corresponding to a graphics
handle in the graphics window. By default the graphics entity twinkles
5 times, but you can change this by using optional argument **n** .



Examples
~~~~~~~~


::

    
    
    x=linspace(-2*%pi,2*%pi,100)';
    plot2d(x,[sin(x),cos(x)]);
    e=gce(); p1=e.children(1); p2=e.children(2);
    // cos plot twinkle
    twinkle(p1)
    // sin plot twinkle 10 times
    twinkle(p2,10)
    // axes twinkle
    twinkle(gca())
     
      




See Also
~~~~~~~~

` **graphics_entities** `_,

.. _
      : ://./graphics/graphics_entities.htm


