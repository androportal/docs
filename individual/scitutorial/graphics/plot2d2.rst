====
"plot2d2"
====

Scilab Function Last update : 28/06/2004
**plot2d2** - 2D plot (step function)



Calling Sequence
~~~~~~~~~~~~~~~~

plot2d2([x],y)
plot2d2([x],y,<opt_args>)
plot2d2([logflag],x,y,[style,strf,leg,rect,nax])




Parameters
~~~~~~~~~~


+ **args** : see **plot2d** for a description of parameters.




Description
~~~~~~~~~~~

**plot2d2** is the same as **plot2d** but the functions given by
**(x,y)** are supposed to be piecewise constant.

By default, successive plots are superposed. To clear the previous
plot, use **clf()** .

Enter the command **plot2d2()** to see a demo. Note that all the modes
proposed by **plot2dxx** (xx = 1 to 4) can be enabled using **plot2d**
and setting the **polyline_style** option to the corresponding number.



Examples
~~~~~~~~


::

    
    
    // plots a step function of value i on the segment [i,i+1]
    // the last segment is not drawn
    plot2d2([1:4],[1:4],1,"111","step function",[0,0,5,5])
    // compare the following with plot2d
    x=[0:0.1:2*%pi]';
    clf()
    plot2d2(x,[sin(x) sin(2*x) sin(3*x)])
      // In New graphics only
    clf()
    set("figure_style","new")
    plot2d(x,[sin(x) sin(2*x) sin(3*x)])
    e=gce();
    e.children(1).polyline_style=2;
    e.children(2).polyline_style=2;
    e.children(3).polyline_style=2;
    
      




See Also
~~~~~~~~

` **plot2d** `_,` **plot2d3** `_,` **plot2d4** `_,` **subplot** `_,`
**clf** `_,` **polyline_properties** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/plot2d4.htm
.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/plot2d3.htm
.. _
      : ://./graphics/subplot.htm
.. _
      : ://./graphics/polyline_properties.htm
.. _
      : ://./graphics/clf.htm


