


standard_origin
===============

Get the position of a block in the Xcos editor.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x,y] = standard_origin(block)




Arguments
~~~~~~~~~

:block xcos block.
: :x x position of the block.
: :y y position of the block.
:



Description
~~~~~~~~~~~

This Scilab function is used to get the origin position ( `x`, `y`) of
an Xcos block.



Example
~~~~~~~


::

    `loadXcosLibs`_();
    o = CSCOPE("define");
    [x,y] = standard_origin(o)




See Also
~~~~~~~~


+ `standard_inputs`_ Get the position of the input ports of a block in
  Xcos editor.
+ `standard_outputs`_ Get the position of the output ports of a block
  in Xcos editor.


.. _standard_inputs: standard_inputs.html
.. _standard_outputs: standard_outputs.html


