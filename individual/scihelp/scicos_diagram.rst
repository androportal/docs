


scicos_diagram
==============

Define a scs_m structure



Module
~~~~~~


+ `xcos`_




diagram
~~~~~~~

Size : 4.

Type : scilab list.




+ **props** Diagram properties. This entry contains various
  information such some main diagram initials values. This variable is a
  tlist of type and contains wpar, title, tol, tf, context, options and
  doc. Size : 11. Type : Scilab tlist of type .
+ **objs** List of objects included in the Xcos diagram. The objects
  used in Xcos are `block`_, `link`_ and Text. The objects can also be
  deleted object data structure. Deleted object data structure is marked
  list('Deleted'). Size : total number of objects in the diagram. Type :
  Scilab tlist of type, or Text.
+ **version** A string that gives the version of the Xcos diagram.
  This is used to provide compatibility with old diagram. Note that you
  can get the current version of Xcos by using the entry 'About Xcos' in
  the help menu or by using the function get_scicos_version(). Size : 1.
  Type : String.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_scicos/scicos_diagram.sci


.. _block: scicos_block.html
.. _xcos: xcos.html
.. _link: scicos_link.html


