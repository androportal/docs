====
"hotcolormap"
====

Scilab Function Last update : 23/03/2004
**hotcolormap** - red to yellow colormap



Calling Sequence
~~~~~~~~~~~~~~~~

cmap=hotcolormap(n)




Parameters
~~~~~~~~~~


+ **n** : integer >= 3, the colormap size.
+ **cmap** : matrix with 3 columns **[R,G,B]** .




Description
~~~~~~~~~~~

**hotcolormap** computes a colormap with **n** hot colors varying from
red to yellow.



Examples
~~~~~~~~


::

    
    
    xset("colormap",hotcolormap(32))
    plot3d1() 
     
      




See Also
~~~~~~~~

` **colormap** `_,` **graycolormap** `_,` **jetcolormap** `_,`
**xset** `_,

.. _
      : ://./graphics/jetcolormap.htm
.. _
      : ://./graphics/xset.htm
.. _
      : ://./graphics/graycolormap.htm
.. _
      : ://./graphics/colormap.htm


