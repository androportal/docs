


scicos_block
============

Define a block structure



Module
~~~~~~


+ `xcos`_




block
~~~~~

Basic structure that define a xcos block.

That structure includes fields `graphics`_, `model`_, gui and doc.





Size : 5.

Type : scilab list.




+ **graphics** Scilab object including graphical information
  concerning the features of the block. Size : 14. Type : scilab list.
+ **model** Scilab list that contains the features of the block used
  for the compilation. Size : 23. Type : Scilab list.
+ **gui** The name of the Scilab GUI function associated with the
  block. Size : 1. Type : string.
+ **doc** Field used for documentation of the block Size : 1. Type :
  string.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_scicos/scicos_block.sci


.. _graphics: scicos_graphics.html
.. _xcos: xcos.html
.. _model: scicos_model.html


