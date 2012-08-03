====
"get_contents_infer"
====

M2SCI Function Last update : 05/10/2004
**get_contents_infer** - Search for informations in a "M2SCi tlist"
contents



Calling Sequence
~~~~~~~~~~~~~~~~

[infer,pos]=get_contents_infer(m2scitlist,index)




Parameters
~~~~~~~~~~


+ **m2scitlist** : a "M2SCI tlist"
+ **index** : an index similar to indexes returned by **macr2tree** .
+ **infer** : an "infer" tlist
+ **pos** : position of information in list




Description
~~~~~~~~~~~

This functions searches for inference informations of a given index in
the contents of a Cell or a Struct taken in account the ***** . If no
information has been found, returned values are infer=infer() and
pos=0.



See Also
~~~~~~~~

` **Infer** `_,` **Contents** `_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./mtlb/Infer.htm
.. _
      : ://./mtlb/Contents.htm


