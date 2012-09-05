


bytecodewalk
============

walk in function bytecode applying transformation.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c1 = bytecodewalk(code,query,job)




Arguments
~~~~~~~~~

:code int32 vector: input byte code array
: :query integer, the opcode to look for
: :job the operation to perform, for the requested opcode
: :c1 int32 vector: output byte code array
:



Description
~~~~~~~~~~~

walk in function bytecode applying transformation.



See Also
~~~~~~~~


+ `bytecode`_ given a function returns the "bytecode" of a function in
  a Scilab array and conversely.


.. _bytecode: bytecode.html


