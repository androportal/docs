====
"scicos_block"
====

Subsections

+ `scicos_block ( *Block*)`_
+ `scicos_graphics ( *graphics*)`_
+ `scicos_model ( *model*)`_






Scicos Block
------------



scicos_block ( *Block*)
~~~~~~~~~~~~~~~~~~~~~~~


+ ** graphics: ** Scilab object, graphic properties data structure
  (see below).
+ ** model: ** Scilab object, system properties data structure (see
  below).
+ ** gui: **character string, the name of the graphic user interface
  function (generally written in Scilab) associated with the block.
  Default value: `""`
+ ** doc: ** unused, reserved for future use. Default value: `list()`



scicos_graphics ( *graphics*)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


+ ** orig: ** 2 x 1 vector, the coordinate of down-left point of the
  block shape. Default value: `[0,0]`
+ ** sz: **vector [w,h], where w is the width and h the height of the
  block shape. Default value: `[20,20]`
+ ** flip: ** boolean, the block orientation. if true the input ports
  are on the left of the box and output ports are on the right. if false
  the input ports are on the right of the box and output ports are on
  the left. Default value: `%t`
+ ** exprs: **column vector of strings, contains expressions answered
  by the user at block set time. Default value: `[]`
+ ** pin: **column vector of integers. If pin(k) 0 then kth input port
  is connected to the block numbered pin(k), else the port is
  unconnected. If no input port exist pin==[]. Default value: `[]`
+ ** pout: ** pout: column vector of integers. If pout(k) 0 then kth
  output port is connected to the block numbered pout(k), else the port
  is unconnected. If no output port exist pout==[]. Default value: `[]`
+ ** pein: ** column vector of ones. If pein(k) 0 then kth event input
  port is connected to the block numbered pein(k), else the port is
  unconnected. If no event input port exist pein==[]. Default value:
  `[]`
+ ** peout: ** column vector of integers. If peout(k) 0 then kth event
  output port is connected to the block numbered peout(k), else the port
  is unconnected. If no event output port exist peout==[]. Default
  value: `[]`
+ ** gr_i: ** column vector of strings, contains Scilab instructions
  used to customize the block graphical aspect. This field may be set
  with "Icon" sub_menu. Default value: `[]`
+ ** id: **Character string used for identification (if any) . Default
  value: `""`
+ ** in_implicit: ** vector of characters. If in_implicit(k)=="E" then
  kth input port is an oriented (explicit) port, if in_implicit(k)=="I"
  then kth input port is an implicit port. Default value: `[]`
+ ** out_implicit: ** vector of characters. If out_implicit(k)=="E"
  then kth ioutput port is an oriented (explicit) port, if
  out_implicit(k)=="I" then kth output port is an implicit port. .
  Default value: `[]`



scicos_model ( *model*)
~~~~~~~~~~~~~~~~~~~~~~~


+ ** sim: **list(fun,typ) or fun. In the latest case typ is supposed
  to be 0.
+ ** in: ** column vector of integers, input port sizes indexed from
  top to bottom of the block. If no input port exist in==[]. Default
  value: `[]`
+ ** out: **column vector of integers, output port sizes indexed from
  top to bottom of the block. If no output port exist in==[]. Default
  value: `[]`
+ ** evtin: **column vector of ones, the size of evtin gives the
  number of event input ports. If no event input port exists evtin must
  be equal to []. Default value: `[]`
+ ** evtout: ** column vector of ones, the size of evtout gives the
  number of event output ports. If no event output port exists evtout
  must be equal to []. Default value: `[]`
+ ** state: **state: column vector, the initial continuous state of
  the block. Must be [] if no continuous state. Default value: `[]`
+ ** dstate: ** column vector, the initial discrete state of the
  block. Must be [] if no discrete state. Default value: `[]`
+ ** rpar: **column vector, the vector of floating point block
  parameters. Must be [] if no floating point parameters. Default value:
  `[]`
+ ** ipar: **column vector, the vector of integer block parameters.
  Must be [] if no integer parameters. Default value: `[]`
+ ** blocktype: **a character with possible values:

    + :'c' or 'd' standard blocks.
    + :'l', 'm' and 's' reserved. Not to be used.
  Default value: `"c"`
+ ** firing: ** a vector whose size is equal to the size of evtout> It
  contains output initial event dates (Events generated before any input
  event arises). Negative values stands for no initial event on the
  corresponding port. Default value: `[]`
+ ** dep_ut: **1x 2 vector of boolean [dep_u, dep_t], dep_u must be
  true if output depends continuously of the input, dep_t must be true
  if output depends continuously of the time. Default value: `[%f,%f]`
+ ** label: ** a character string, used as a label. Default value:
  `""`
+ ** nzcross: ** Number of zero crossing surfaces . Default value: `0`
+ ** nmode: ** Number of different modes . Default value: `0`
+ ** equations: ** Data structure which contains modelica code
  description if any. Default value: `list()`



Ramine Nikoukhah 2004-06-22
.. _): ://./scicos/scicos_block.htm#SECTION00312200000000000000
.. _): ://./scicos/scicos_block.htm#SECTION00312100000000000000
.. _): ://./scicos/scicos_block.htm#SECTION00312300000000000000


