


datatipManagerMode
==================

Set or toggles the data tips mode.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatipManagerMode()
    datatipManagerMode('on')
    datatipManagerMode('off')
    datatipManagerMode(fig)
    datatipManagerMode(fig,'on')
    datatipManagerMode(fig,'off')




Arguments
~~~~~~~~~

:fig Graphic window handle or Graphic window id.
:



Description
~~~~~~~~~~~

When enabled, the data tips mode allow to add and edit tips at
selected points of polylines. The selection is made by a right click
on the selected point.

`datatipManagerMode()`, toggles the data tips mode for the current
figure while `datatipManagerMode(fig)` toggles the data tips mode for
figure given by the handle `fig`.

`datatipManagerMode('on')`, enables the data tips mode for the current
figure while `datatipManagerMode(fig,'on')` enables the data tips mode
for figure given by the handle `fig`.

`datatipManagerMode('off')`, disables the data tips mode for the
current figure while `datatipManagerMode(fig,'off')` disables the data
tips mode for figure given by the handle `fig`.



Examples
~~~~~~~~


::

    t=`linspace`_(0,10,200);
    `plot`_(t,`sin`_(t))
    datatipManagerMode('on')
    //now click somewhere on the curve




See Also
~~~~~~~~


+ `datatipToggle`_ toggles the data tips mode.


.. _datatipToggle: datatipToggle.html


