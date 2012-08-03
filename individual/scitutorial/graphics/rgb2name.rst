====
"rgb2name"
====

Scilab Function Last update : 13/04/2004
**rgb2name** - returns the name of a color



Calling Sequence
~~~~~~~~~~~~~~~~

names=rgb2name(r,g,b)
names=rgb2name(rgb)




Parameters
~~~~~~~~~~


+ **r,g,b** : RGB integer values of a color.
+ **rgb** : vector of RGB integer values of a color.
+ **names** : names of the color.




Description
~~~~~~~~~~~

**rgb2name** returns the color name corresponding to the RGB values
given by its argument. A vector of color names can also be returned if
the color has more than 1 name. **r** , **g** and **b** must be
integers between 0 and 255 corresponding to colors components red,
green and blue. As usual 0 means no intensity and 255 means all the
intensity of the color. RGB values can also be given by a vector
**[r,g,b]** .

If no color is found **[]** is returned.

The list of all known colors is given by ` **color_list** `_.



Examples
~~~~~~~~


::

    
    
    rgb2name(255,128,128)
    rgb2name([255 215 0])
    // get color #10 of the current colormap and find its name
    cmap=get(gcf(),"color_map");
    rgb2name(cmap(10,:)*255)
     
      




See Also
~~~~~~~~

` **color** `_,` **color_list** `_,` **name2rgb** `_,

.. _
      : ://./graphics/color.htm
.. _
      : ://./graphics/name2rgb.htm
.. _
      : ://./graphics/color_list.htm


