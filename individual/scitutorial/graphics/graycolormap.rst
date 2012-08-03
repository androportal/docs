====
"graycolormap"
====

Scilab Function Last update : 23/03/2004
**graycolormap** - linear gray colormap



Calling Sequence
~~~~~~~~~~~~~~~~

cmap=graycolormap(n)




Parameters
~~~~~~~~~~


+ **n** : integer >= 1, the colormap size.
+ **cmap** : matrix with 3 columns **[R,G,B]** .




Description
~~~~~~~~~~~

**graycolormap** computes a colormap with **n** gray colors varying
linearly from black to white.



Examples
~~~~~~~~


::

    
    
    xset("colormap",graycolormap(32))
    plot3d1() 
     
      




See Also
~~~~~~~~

` **colormap** `_,` **hotcolormap** `_,` **jetcolormap** `_,` **xset**
`_,

.. _
      : ://./graphics/hotcolormap.htm
.. _
      : ://./graphics/xset.htm
.. _
      : ://./graphics/colormap.htm
.. _
      : ://./graphics/jetcolormap.htm


