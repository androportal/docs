


aplat
=====

Flattens a list.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [lf,ind] = aplat(l,r)




Arguments
~~~~~~~~~

:l a list
: :r an optional flat list
: :lf a flat list (a single hierachical level)
: :ind a list, each entry give the path of the corresponding lf entry
  in the original list
:



Description
~~~~~~~~~~~

Creates a flat list, built with the initial l list leaves and if given
prepended by the r list entries



Examples
~~~~~~~~


::

    [lf,ind]=aplat(`list`_(1,2,`list`_([3,1],'xxx',`list`_([3,2,1]))))




See Also
~~~~~~~~


+ `recons`_ Inverse function for aplat.


.. _recons: recons.html


