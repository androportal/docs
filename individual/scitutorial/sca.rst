


sca
===

set the current axes entity



Calling Sequence
~~~~~~~~~~~~~~~~


::

    a=sca(a)




Arguments
~~~~~~~~~

:a a handle, the handle on the Axes entity
:



Description
~~~~~~~~~~~

`sca(a)` is used to set the current `Axes` entity (see
`graphics_entities`_) to the one pointed to by the handle `a`. The
drawing functions generaly use the current axes entity.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `clf`_()
    a1=`newaxes`_(); 
    a1.axes_bounds=[0,0,1.0,0.5];
    t=0:0.1:20;
    `plot`_(t,`acosh`_(t),'r')
    a2=`newaxes`_();
    a2.axes_bounds=[0,0.5,1.0,0.5];
    x=0:0.1:4;
    `plot`_(x,`sinh`_(x))
    
    sca(a1); //make first axes current
    `plot`_(t,`asinh`_(t),'g')
    `legend`_(['acosh','asinh'])
    sca(a2); //make second axes current
    `legend`_('sinh')




See Also
~~~~~~~~


+ `subplot`_ divide a graphics window into a matrix of sub-windows
+ `gda`_ Return handle of default axes.
+ `newaxes`_ Creates a new Axes entity


.. _newaxes: newaxes.html
.. _gda: gda.html
.. _subplot: subplot.html
.. _graphics_entities: graphics_entities.html


