


datatipToggle
=============

toggles the data tips mode.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatipToggle(fig)
    datatipToggle()




Arguments
~~~~~~~~~

:fig Graphic window handle.
:



Description
~~~~~~~~~~~

When enabled, the data tips mode allow to add and edit tips at
selected points of curve. The selection is made by a right click on
the selected point.

`datatipToggle()`, toggles the data tips mode for the current figure
while `datatipToggle(fig)` toggles the data tips mode for figure given
by the handle `fig`.



Examples
~~~~~~~~


::

    t=`linspace`_(0,10,200);
    `plot`_(t,`sin`_(t))
    datatipToggle()
    //now click somewhere on the curve




See Also
~~~~~~~~


+ `datatipManagerMode`_ Set or toggles the data tips mode.
+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.


.. _datatipManagerMode: datatipManagerMode.html
.. _datatips: datatips.html


