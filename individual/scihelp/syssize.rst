


syssize
=======

size of state-space system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [r,nx]=syssize(Sl)




Arguments
~~~~~~~~~

:Sl linear system ( `syslin` list) in state-space
: :r 1 x 2 real vector
: :nx integer
:



Description
~~~~~~~~~~~

returns in `r` the vector [number of outputs, number of inputs] of the
linear system `Sl`. `nx` is the number of states of `Sl`.



See Also
~~~~~~~~


+ `size`_ size of objects


.. _size: size.html


