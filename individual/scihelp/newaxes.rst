


newaxes
=======

Creates a new Axes entity



Calling Sequence
~~~~~~~~~~~~~~~~


::

    a=newaxes()




Arguments
~~~~~~~~~

:a a handle, the handle on the newly created Axes entity
:



Description
~~~~~~~~~~~

`newaxes()` is used to create a new `Axes` entity (see
`graphics_entities`_) in the current figure. The properties of this
entity are inherited from the `default_axes` entity (see `gda`_)



Examples
~~~~~~~~


::

    `clf`_()
    a1=newaxes(); 
    a1.axes_bounds=[0,0,1.0,0.5];
    t=0:0.1:20;
    `plot`_(t,`acosh`_(t),'r')
    a2=newaxes();
    a2.axes_bounds=[0,0.5,1.0,0.5];
    x=0:0.1:4;
    `plot`_(x,`sinh`_(x))
    `legend`_('sinh')
    
    `sca`_(a1); //make first axes current
    `plot`_(t,`asinh`_(t),'g')
    `legend`_(['acosh','asinh'])




See Also
~~~~~~~~


+ `subplot`_ divide a graphics window into a matrix of sub-windows
+ `gda`_ Return handle of default axes.
+ `sca`_ set the current axes entity


.. _sca: sca.html
.. _gda: gda.html
.. _subplot: subplot.html
.. _graphics_entities: graphics_entities.html


