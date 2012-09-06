


datatipSetStruct
================

Stores the datatips data structure in the polyline entity.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ok=datatipSetStruct(curve_handle,datatips_struct)




Arguments
~~~~~~~~~

:curve_handle A handle on a polyline.
: :datatips_struct A tlist of type `datatips`.
: :ok A boolean flag set to %f if the operations fail.
:



Description
~~~~~~~~~~~

`datatipSetStruct` stores the datatips data structure in the polyline
entity. This is a subsidiary functions which is not to be called
directly.



See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.
+ `datatipGetStruct`_ Retreive the datatips data structure from the
  polyline entity.


.. _datatipGetStruct: datatipGetStruct.html
.. _datatips: datatips.html


