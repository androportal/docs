


datatipGetEntities
==================

Get all the entities compatible with datatips in the given axes.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    curve_handles=datatipGetEntities(ax)
    curve_handles=datatipGetEntities()




Arguments
~~~~~~~~~

:ax A handle on an axes entity. The default value is `gca()`
:

:curve_handles An array of handle on entities compatible with
  datatips.
:



Description
~~~~~~~~~~~

Get all the entities compatible with datatips in the given axes. In
the current version only polyline entities are handled.



Examples
~~~~~~~~


::

    `clf`_();`plot2d`_();
    `xarrows`_([3;2.72],[1.6;0.96],3,2);
    `xstring`_(3,1.6,'sin(t)')
    curve_handles=datatipGetEntities()
    curve_handles.visible='off';
    curve_handles.visible='on';




See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.


.. _datatips: datatips.html


