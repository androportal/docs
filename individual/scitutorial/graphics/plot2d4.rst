====
"plot2d4"
====

Scilab Function Last update : 28/06/2004
**plot2d4** - 2D plot (arrows style)



Calling Sequence
~~~~~~~~~~~~~~~~

plot2d4([logflag,] x,y,[style,strf,leg,rect,nax])
plot2d4(y)
plot2d4(x,y <,opt_args>)




Parameters
~~~~~~~~~~


+ **args** : see **plot2d** for a description of parameters.




Description
~~~~~~~~~~~

**plot2d4** is the same as **plot2d** but curves are plotted using
arrows style. This can be useful when plotting solutions of an ODE in
a phase space.

By default, successive plots are superposed. To clear the previous
plot, use **clf()** .

Enter the command **plot2d4()** to see a demo. Note that all the modes
proposed by **plot2dxx** (xx = 1 to 4) can be enabled using **plot2d**
and setting the **polyline_style** option to the corresponding number.



Examples
~~~~~~~~


::

    
    
    // compare the following with plot2d1
    x=[0:0.1:2*%pi]';
    plot2d4(x,[sin(x) sin(2*x) sin(3*x)])
     // In New graphics only
    clf()
    set("figure_style","new")
    plot2d(x,[sin(x) sin(2*x) sin(3*x)])
    e=gce();
    e.children(1).polyline_style=4;
    e.children(2).polyline_style=4;
    e.children(3).polyline_style=4;




See Also
~~~~~~~~

` **fchamp** `_,` **plot2d** `_,` **plot2d2** `_,` **plot2d3** `_,`
**subplot** `_,` **clf** `_,` **polyline_properties** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/subplot.htm
.. _
      : ://./graphics/plot2d3.htm
.. _
      : ://./graphics/plot2d2.htm
.. _
      : ://./graphics/polyline_properties.htm
.. _
      : ://./graphics/clf.htm
.. _
      : ://./graphics/fchamp.htm


