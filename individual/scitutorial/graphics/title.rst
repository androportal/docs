====
"title"
====

Scilab Function Last update : 28/04/2006
**title** - display a title on a graphic window



Calling Sequence
~~~~~~~~~~~~~~~~

title(my_title)
title(my_title,<Property>)
title(<axes_handle>,<my_title>,<Property>)




Parameters
~~~~~~~~~~


+ **my_title** : a string, it's the title to display
+ **<Property>** : This optional argument represents a sequence of
  couple statements **{PropertyName,PropertyValue}** that defines global
  objects' properties applied to the created title.
+ **<axes_handle>** : This optional argument forces the title to
  appear inside the selected axes given by **axes_handle** rather than
  the current axes (see ` **gca** `_).




Description
~~~~~~~~~~~

**title** displays a title on a graphic window.

The **Property** arguments should be used to customize the title. Here
is a complete list of the available options.

****


**Property :** **backgroundcolor** : this field contains the color
  used to fill the box if any. Its value should be a color index
  (relative to the current colormap). **color** : this field contains
  the color used to display the title text. Its value should be a color
  index (relative to the current colormap). **edgecolor** : this field
  contains the color used to display the line around the box if any. Its
  value should be a color index (relative to the current colormap).
  **fontname** : Seven differents fonts are available : "Courrier",
  "Symbol", "Times", "Times Italic", "Times Bold", "User defined". The
  font_size property is an index in [0 6] which is associated to the
  previous font names. **fontsize** : The fontsize property is used to
  select the type of size of the title. Its value should be an integer
  in between 0 and 5 which stands for 8pt, 10pt, 12pt, 14pt, 18pt and
  24pt. **position** : This 2d vector allows you to place manually the
  title on the screen. The position is stored in the data units of the
  axes. **rotation** : This scalar allows you to turn the title. The
  font is turned inverse clockise with the angle given in degrees.
  **visible** : this field contains the visible property value for the
  title. It should be "on" or "off". By default, the label is visible,
  the value's property is "on" . If "off" the title is not displayed on
  the screen.




Examples
~~~~~~~~


::

    // display a title with several properties 
    title('my title');
    // change the color for the font
    title('my title','color','blue');
    // change the color for the around the box
    title('my title','edgecolor','red');
    // change the position of the title 
    title('my title','position',[0.3 0.8]);
    // change the size of the font
    title('my title','fontsize',3);
    // a rotation 
    title('my title','rotation',90);
    
    // We can do all these modifications with just the below instruction:
    title('my title','color','blue','edgecolor','red','fontsize',3,'rotation',90,'position',[0.3 0.8]);
    




See Also
~~~~~~~~

` **label_properties** `_,` **titlepage** `_,` **xtitle** `_,



Author
~~~~~~

F.Belahcene

.. _
      : ://./graphics/titlepage.htm
.. _
        : ://./graphics/gca.htm
.. _
      : ://./graphics/xtitle.htm
.. _
      : ://./graphics/label_properties.htm


