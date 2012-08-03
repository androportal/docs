====
"name2rgb"
====

Scilab Function Last update : 13/04/2004
**name2rgb** - returns the RGB values of a named color



Calling Sequence
~~~~~~~~~~~~~~~~

rgb=name2rgb(name)




Parameters
~~~~~~~~~~


+ **name** : name of the color.
+ **rgb** : vector of RGB integer values of a color.




Description
~~~~~~~~~~~

**name2rgb** returns the RGB values of a color given by its name. The
result is a vector **[r,g,b]** where **r** , **g** and **b** are
integers between 0 and 255 corresponding to colors components red,
green and blue. As usual 0 means no intensity and 255 means all the
intensity of the color.

If no color is found **[]** is returned.

The list of all known colors is given by ` **color_list** `_.



Examples
~~~~~~~~


::

    
    
    rgb=name2rgb("gold")
    rgb2name(rgb)
     
      




See Also
~~~~~~~~

` **color** `_,` **color_list** `_,` **rgb2name** `_,

.. _
      : ://./graphics/color.htm
.. _
      : ://./graphics/rgb2name.htm
.. _
      : ://./graphics/color_list.htm


