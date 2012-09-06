


nf3d
====

Rectangular facets to plot3d parameters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [xx,yy,zz]=nf3d(x,y,z)




Arguments
~~~~~~~~~

:x,y,x,xx,yy,zz 6 real matrices
:



Description
~~~~~~~~~~~

Utility function. Used for transforming rectangular facets coded in
three matrices x,y,z to scilab code for facets accepted by plot3d.



Examples
~~~~~~~~


::

    //A sphere...
    u = `linspace`_(-%pi/2,%pi/2,40);
    v = `linspace`_(0,2*%pi,20);
    x= `cos`_(u)'*`cos`_(v);
    y= `cos`_(u)'*`sin`_(v);
    z= `sin`_(u)'*`ones`_(v);
    //plot3d2(x,y,z) is equivalent to...
    [xx,yy,zz]=nf3d(x,y,z); `plot3d`_(xx,yy,zz)




See Also
~~~~~~~~


+ `plot3d`_ 3D plot of a surface
+ `plot3d2`_ plot surface defined by rectangular facets


.. _plot3d: plot3d.html
.. _plot3d2: plot3d2.html


