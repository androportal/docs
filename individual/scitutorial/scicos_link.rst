


scicos_link
===========

Define a link structure



Module
~~~~~~


+ `xcos`_




link
~~~~

Size : 8.

Type : scilab list.




+ **xx** Vector of x coordinates of the link path. A link is defined
  as a polyline line. Size : number of points of the link. Type : column
  vector of real numbers.
+ **yy** Vector of y coordinates of the link path. A link is defined
  as a polyline line. Size : number of points of the link. Type : column
  vector of real numbers.
+ **id** Character string, the link identification. Size : 1. Type :
  string.
+ **thick** Vector of size two defining line thickness. Size : 2. Type
  : row vector of integers.
+ **ct** The first entry of this vector designates the color, and the
  second, the nature of the link. The second entry is 1 for a regular
  link, -1 for an activation link, and 2 for an implicit link. Size : 2.
  Type : row vector of integers.
+ **from** Vector of size three including the block number, port
  number, and port type (0 for output, 1 for input) at the origin of the
  link. Note that the third entry may be 1 if the link is implicit;
  otherwise it is zero. Size : 3. Type : row vector of integers.
+ **to** Vector of size three including the block number, port number,
  and port type (0 for output, 1 for input) at the destination of the
  link. Note that the third entry may be 1 if the link is implicit;
  otherwise it is zero. Size : 3. Type : row vector of integers.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_scicos/scicos_link.sci


.. _xcos: xcos.html


