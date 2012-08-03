====
"nf3d"
====

Scilab Function Last update : April 1993
**nf3d** - rectangular facets to plot3d parameters



Calling Sequence
~~~~~~~~~~~~~~~~

[xx,yy,zz]=nf3d(x,y,z)




Parameters
~~~~~~~~~~


+ **x,y,x,xx,yy,zz** : 6 real matrices




Description
~~~~~~~~~~~

Utility function. Used for transforming rectangular facets coded in
three matrices x,y,z to scilab code for facets accepted by plot3d.



Examples
~~~~~~~~


::

    
    
    //A sphere...
    u = linspace(-%pi/2,%pi/2,40);
    v = linspace(0,2*%pi,20);
    x= cos(u)'*cos(v);
    y= cos(u)'*sin(v);
    z= sin(u)'*ones(v);
    //plot3d2(x,y,z) is equivalent to...
    [xx,yy,zz]=nf3d(x,y,z); plot3d(xx,yy,zz)
     
      




See Also
~~~~~~~~

` **plot3d** `_,` **plot3d2** `_,

.. _
      : ://./graphics/plot3d.htm
.. _
      : ://./graphics/plot3d2.htm


