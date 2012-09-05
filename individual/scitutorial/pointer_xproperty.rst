


pointer_xproperty
=================

Get the type of a continuous time state variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [xprop] = pointer_xproperty()




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

This function returns a vector that informs the type (algebraic or
differential) of the continuous state variables of a block.




::

    [xprop]=pointer_xproperty




Arguments
~~~~~~~~~


+ **xprop** The value gives the type of the states :

    + -1 : an algebraic state.
    + 1 : a differential state.





See Also
~~~~~~~~


+ `set_xproperty - Set the type of a continuous time state variable
  (Scilab Function)`_


.. _set_xproperty - Set the type of a continuous time state variable (Scilab Function): set_xproperty.html
.. _xcos: xcos.html


