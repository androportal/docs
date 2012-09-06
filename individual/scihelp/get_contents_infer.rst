


get_contents_infer
==================

Search for information in a "M2SCi tlist" contents



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [infer,pos]=get_contents_infer(m2scitlist,index)




Arguments
~~~~~~~~~

:m2scitlist a "M2SCI tlist"
: :index an index similar to indexes returned by `macr2tree`.
: :infer an "infer" tlist
: :pos position of information in list
:



Description
~~~~~~~~~~~

This functions searches for inference information of a given index in
the contents of a Cell or a Struct taken in account the `*`. If no
information has been found, returned values are infer=infer() and
pos=0.



See Also
~~~~~~~~


+ `Infer`_ Create a tree containing inference data
+ `Contents`_ Create a tree containing contents inference data


.. _Infer: Infer.html
.. _Contents: Contents.html


