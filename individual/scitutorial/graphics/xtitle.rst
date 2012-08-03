====
"xtitle"
====

Scilab Function Last update : 01/02/2006
**xtitle** - add titles on a graphics window



Calling Sequence
~~~~~~~~~~~~~~~~

xtitle(title,[x_label,[y_label,[z_label]]],<opts_args>)




Parameters
~~~~~~~~~~


+ **title,x_label,y_label, z_label** : matrices of strings.
+ **<opt_args>** : a sequence of statements **key1=value1,
  key2=value2** , ... where keys may be **boxed** (see below). In this
  case, the order has no special meaning.
+ **boxed** : an integer value. If it is 1, a box is drawn around each
  title.




Description
~~~~~~~~~~~

**xtitle** add titles on a 2D or 3D plot. **title** is the general
title and **x_label**, **y_label** and **z_label** are the titles on
the three axis. If the arguments are matrices, each line of the
matrices is displayed on a different line.

Enter the command **xtitle()** to see a demo.



Examples
~~~~~~~~


::

    // draw a surface
    plot3d() ;
    // puts the titles
    xtitle( 'My surface is blue', 'X axis', 'Y axis', 'Z axis' ) ;
    // draw a box around the titles
    xtitle( 'My surface is blue', 'X axis', 'Y axis', 'Z axis', boxed = 1 ) ;




See Also
~~~~~~~~

` **titlepage** `_ ` **label_properties** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/titlepage.htm
.. _
      : ://./graphics/label_properties.htm


