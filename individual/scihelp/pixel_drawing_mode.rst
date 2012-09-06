


pixel_drawing_mode
==================

bitwise pixel rendering functions.



Description
~~~~~~~~~~~

Here, the color encoding is RGB. The pixel drawing mode is a `figure
property`_ that specifies a bitwise operation applied on any figure
pixel between the incoming color and the already existing color on the
figure. The result of this operation will be the new pixel color.
`src` is the incoming color of the pixel. `prv` is the previus color
of the pixel (which is already drawn). `res` is the resulting color of
the pixel (which will be drawn). Possible values for
`pixel_drawing_mode` are:
value bitwise operation comments 0 CLEAR Result color is black 1 AND
res = src AND prv 2 AND REVERSE res = src AND (NOT prv) 3 COPY res =
src, default value 4 AND INVERTED res = (NOT src) AND prv 5 NOOP res =
prv 6 XOR res = src XOR prv 7 OR res = src OR prv 8 NOR res = NOT (src
OR prv) 9 EQUIV res = (NOT src) XOR prv 10 INVERT res = NOT prv 11 OR
REVERSE res = src OR (NOT prv) 12 COPY INVERTED res = NOT src 13 OR
INVERTED res = (NOT src) OR prv 14 NAND res = NOT (src AND prv) 15 SET
Result color is white
.. _figure property: figure_properties.html


