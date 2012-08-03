====
"jetcolormap"
====

Scilab Function Last update : 23/03/2004
**jetcolormap** - blue to red colormap



Calling Sequence
~~~~~~~~~~~~~~~~

cmap=jetcolormap(n)




Parameters
~~~~~~~~~~


+ **n** : integer >= 3, the colormap size.
+ **cmap** : matrix with 3 columns **[R,G,B]** .




Description
~~~~~~~~~~~

**jetcolormap** computes a colormap with **n** colors varying from
blue, lightblue, green, yellow, orange then red



Examples
~~~~~~~~


::

    
    
    xset("colormap",jetcolormap(64))
    plot3d1() 
     
      




See Also
~~~~~~~~

` **colormap** `_,` **graycolormap** `_,` **hotcolormap** `_,`
**xset** `_,

.. _
      : ://./graphics/hotcolormap.htm
.. _
      : ://./graphics/xset.htm
.. _
      : ://./graphics/graycolormap.htm
.. _
      : ://./graphics/colormap.htm


