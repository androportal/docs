====
"newaxes"
====

Scilab Function Last update : 06/12/2005
**newaxes** - Creates a new Axes entity



Calling Sequence
~~~~~~~~~~~~~~~~

a=newaxes()




Parameters
~~~~~~~~~~


+ **a** : a handle, the handle on the newly created Axes entity




Description
~~~~~~~~~~~
**newaxes()** is used to create a new **Axes** entity (see `
**graphics_entities** `_) in the current figure. The properties of
this entity are inherited from the **default_axes** entity (see `
**gda** `_)


Examples
~~~~~~~~


::

    
    
    clf()
    a1=newaxes(); 
    a1.axes_bounds=[0,0,1.0,0.5];
    t=0:0.1:20;
    plot(t,acosh(t),'r')
    a2=newaxes();
    a2.axes_bounds=[0,0.5,1.0,0.5];
    x=0:0.1:4;
    plot(x,sinh(x))
    legend('sinh')
    
    sca(a1); //make first axes current
    plot(t,asinh(t),'g')
    legend(['acosh','asinh'])
     
      




See Also
~~~~~~~~

` **subplot** `_,` **gda** `_,` **sca** `_,



Author
~~~~~~

S. Steer, INRIA

.. _
    : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/subplot.htm
.. _
      : ://./graphics/gda.htm
.. _
      : ://./graphics/sca.htm


