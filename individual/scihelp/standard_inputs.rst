


standard_inputs
===============

Get the position of the input ports of a block in Xcos editor.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x,y,typ] = standard_inputs(block)




Arguments
~~~~~~~~~

:block xcos block.
: :x x position of the port. When multiple ports are described, `x` is
  a float vector of x positions.
: :y y position of the port. When multiple ports are described, `y` is
  a float vector of y positions.
: :typ determine the type of ports. It can take the following values:
  `-1` if this is a clock port; `1` if this is an explicit port; `2` if
  this is an implicit port. When multiple ports are described, `typ` is
  a vector.
:



Description
~~~~~~~~~~~

This Scilab function is used to get the position ( `x`, `y`) of each
input port of an Xcos block.



Example
~~~~~~~


::

    `loadXcosLibs`_();
    o1 = CSCOPE("define");
    [x1,y1,typ1] = standard_inputs(o1)
    o2 = Capacitor("define");
    [x2,y2,typ2] = standard_inputs(o2)




See Also
~~~~~~~~


+ `standard_outputs`_ Get the position of the output ports of a block
  in Xcos editor.
+ `standard_origin`_ Get the position of a block in the Xcos editor.


.. _standard_origin: standard_origin.html
.. _standard_outputs: standard_outputs.html


