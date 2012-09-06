


scicos_graphics
===============

Define a graphics structure



Module
~~~~~~


+ `xcos`_




graphics
~~~~~~~~

Scilab object including graphical information concerning the features
of the block.





Size : 14.

Type : scilab list.




+ **orig** Vector [xo,yo], where xo is the x coordinate of the block
  origin and yo is the y coordinate of the block origin. [xo,yo] is the
  coordinate of down-left point of the block shape. Size : 2. Type : row
  vector of real.
+ **sz** Vector [w,h], where w is the block width and h the block
  height. Size : 2. Type : row vector of real.
+ **flip** Set the block orientation. If true the input ports are on
  the left of the box and output ports are on the right. If false the
  input ports are on the right of the box and output ports are on the
  left. Size : 1. Type : boolean.
+ **theta** Set the angle of the Scicos object. This value is in
  degree and is included in [-360,360]. Size : 1. Type : real.
+ **exprs** Strings including formal expressions used in the dialog
  box of the block. Size : number of formal expressions. Type : column
  vector of strings.
+ **pin** Vector. pin(i) is the number of the link connected to the
  ith regular input port (counting from one), or 0 if this port is not
  connected. Size : number of regular input ports. Type : column vector
  of integers.
+ **pout** Vector. pout(i) is the number of the link connected to the
  ith regular output port (counting from one), or 0 if this port is not
  connected. Size : number of regular output ports. Type : column vector
  of integers.
+ **pein** Vector. pein(i) is the number of the link connected to the
  ith event input port (counting from one), or 0 if this port is not
  connected. Size : number of events input ports. Type : column vector
  of integers.
+ **peout** Vector. peout(i) is the number of the link connected to
  the ith event output port (counting from one), or 0 if this port is
  not connected. Size : number of events output ports. Type : column
  vector of integers.
+ **gr_i** Strings including Scilab graphics expressions for
  customizing the block graphical aspect. This field may be set with
  Icon sub_menu. Size : -. Type : column vector of strings.
+ **id** A string including an identification for the block. The
  string is displayed under the block in the diagram. Size : 1. Type :
  string.
+ **in_implicit** A vector of strings including 'E' or 'I'. 'E' and
  'I' stand respectively for explicit and implicit port, and this vector
  indicates the nature of each input port. For regular blocks (not
  implicit), this vector is empty or contains only "E". Size : nul or
  number of regular input ports. Type : column vector of strings.
+ **out_implicit** A vector of strings including 'E' or 'I'. 'E' and
  'I' stand respectively for explicit and implicit port, and this vector
  indicates the nature of each output port. For regular blocks (not
  implicit), this vector is empty or contains only "E". Size : nul or
  number of regular output ports. Type : column vector of strings.
+ **in_style** A vector of strings including JGraphX key values style
  properties. These style can be used to place text or to change port
  aspect (eg. round, green port). This is set in semicolon separated
  key=value set. For exemple `"shape=ellipse;fillColor=green"` for a
  round and green port Size : nul or number of regular input ports. Type
  : column vector of strings.
+ **out_style** A vector of strings including JGraphX key values style
  properties. These style can be used to place text or to change port
  aspect (eg. round, green port). This is set in semicolon separated
  key=value set. For exemple `"shape=ellipse;fillColor=green"` for a
  round and green port Size : nul or number of regular output ports.
  Type : column vector of strings.
+ **in_label** A vector of strings including ports labels. These
  labels can be used to update text or to trace information. Size : nul
  or number of regular input ports. Type : column vector of strings.
+ **out_label** A vector of strings including ports labels. These
  labels can be used to update text or to trace information. Size : nul
  or number of regular output ports. Type : column vector of strings.
+ **style** A string. A vector of strings including JGraphX key values
  style properties. These style can be used to place text or to change
  block aspect (eg. shape, image, text). This is set in semicolon
  separated key=value set. For exemple `"shape=ellipse;fillColor=red"`
  for a round and green block Size : nul or 1. Type : a string.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_scicos/scicos_graphics.sci


.. _xcos: xcos.html


