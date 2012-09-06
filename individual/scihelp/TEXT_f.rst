


TEXT_f
======

Free annotation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Free annotation`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `See also`_





Palette
~~~~~~~


+ `Annotations palette`_




Description
~~~~~~~~~~~

This special block is only used to add text at any point of the
diagram window. It has no effect on the simulation.

You can add this block directly by a mouse double click in a free part
of the diagram.

After addition, double click on the block and write your text. If you
want more control on the text (font type, size or colors), a mouse
right click shows a pop-up menu. Select the sub-menu item *Edit...* of
the *Format* menu item. This item open the tabbed dialog below where
you can set the text parameters.

Note : the following GUI is also used to modify comment text and
appearance of the blocks and links.



Dialog box
~~~~~~~~~~






+ **Text tab** In this tab, you can modify your text and its
  appearance with the font size, family and style. You can also use some
  HTML tags to control you text displaying. Starting from Scilab 5.2, it
  is also possible to write `LaTeX or MathML`_ expressions.
+ **Colors tabs** The use of these tabs is the same for the text,
  border or fill colors. You can set the color with four methods :

    + HSV colors (hue, saturation, value).
    + RGB colors (red, green, blue).
    + HTML color : color in the form of a string of three hexadecimal
      numbers with two digits (RRGGBB) preceded by the character "#".
    + HSV color wheel : move the little white segment around the circle to
      set hue, and move the little circle to set the saturation and value.





Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** text




Example
~~~~~~~

The figure below shows some examples of text annotations. The first
shows the result obtained with a LaTeX expression, the second the text
is an ordered HTML list. `Open this example in Xcos`_ and select
*Format* then *Edit...* in the pop-up menu to change the text
parameters.





See also
~~~~~~~~


+ `Math rendering`_ Display mathematical equations in Scilab graphics
  through the LaTeX or MathML languages.


.. _Default properties: TEXT_f.html#Defaultproperties_TEXT_f
.. _See also: TEXT_f.html#See_also
.. _Math rendering: math_rendering_features_in_graphic.html
.. _Dialog box: TEXT_f.html#Dialogbox_TEXT_f
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/annotations_pal/en_US/text_f_en_US.xcos
.. _Annotations palette: Annotations_pal.html
.. _Palette: TEXT_f.html#Palette_TEXT_f
.. _Example: TEXT_f.html#Example_TEXT_f
.. _Description: TEXT_f.html#Description_TEXT_f
.. _Free annotation: TEXT_f.html


