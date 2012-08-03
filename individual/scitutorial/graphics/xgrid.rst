====
"xgrid"
====

Scilab Function Last update : April 1993
**xgrid** - add a grid on a 2D plot



Calling Sequence
~~~~~~~~~~~~~~~~

xgrid([style])




Parameters
~~~~~~~~~~


+ **style** : integer




Description
~~~~~~~~~~~

**xgrid** adds a grid on a 2D plot. **style** is the dash id or the
color id to use for the grid plotting. Use **xset()** for the meaning
of id.



Examples
~~~~~~~~


::

    
    
    x=[0:0.1:2*%pi]';
    plot2d(sin(x))
    xgrid(2)
     
      




See Also
~~~~~~~~

` **xset** `_,` **plot2d** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xset.htm
.. _
      : ://./graphics/plot2d.htm


