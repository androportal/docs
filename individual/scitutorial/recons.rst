


recons
======

Inverse function for aplat.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    r = recons(fl,ind)




Arguments
~~~~~~~~~

:fl a "flat" list.
: :ind a list of paths
: :r a hierachical list build with the leaves of fl
:



Description
~~~~~~~~~~~

Reciprocal function for aplat. Creates a hierachical list given a flat
one and a list of paths.

utility function for vec2list and lmisolver.



Examples
~~~~~~~~


::

    [lf,ind]=`aplat`_(`list`_(1,2,`list`_([3,1],'xxx',`list`_([3,2,1]))));
    recons(lf,ind)




See Also
~~~~~~~~


+ `aplat`_ Flattens a list.


.. _aplat: aplat.html


