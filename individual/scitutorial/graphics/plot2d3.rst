====
"plot2d3"
====

Scilab Function Last update : 28/06/2004
**plot2d3** - 2D plot (vertical bars)



Calling Sequence
~~~~~~~~~~~~~~~~

plot2d3([logflags,] x,y,[style,strf,leg,rect,nax])
plot232(y)
plot2d3(x,y <,opt_args>)




Parameters
~~~~~~~~~~


+ **args** : see **plot2d** for a description of parameters.




Description
~~~~~~~~~~~

**plot2d3** is the same as **plot2d** but curves are plotted using
vertical bars.

By default, successive plots are superposed. To clear the previous
plot, use **clf()** .

Enter the command **plot2d3()** to see a demo. Note that all the modes
proposed by **plot2dxx** (xx = 1 to 4) can be enabled using **plot2d**
and setting the **polyline_style** option to the corresponding number.



Examples
~~~~~~~~


::

    
    
    // compare the following with plot2d1
    x=[0:0.1:2*%pi]';
    plot2d3(x,[sin(x) sin(2*x) sin(3*x)])
    // In New graphics only
    clf()
    set("figure_style","new")
    plot2d(x,[sin(x) sin(2*x) sin(3*x)])
    e=gce();
    e.children(1).polyline_style=3;
    e.children(2).polyline_style=3;
    e.children(3).polyline_style=3;




See Also
~~~~~~~~

` **plot2d** `_,` **plot2d2** `_,` **plot2d4** `_,` **clf** `_,`
**polyline_properties** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/plot2d4.htm
.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/plot2d2.htm
.. _
      : ://./graphics/polyline_properties.htm
.. _
      : ://./graphics/clf.htm


