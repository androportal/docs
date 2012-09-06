


intppty
=======

set interface argument passing properties



Calling Sequence
~~~~~~~~~~~~~~~~


::

    funs=intppty()
    intppty(fun)




Arguments
~~~~~~~~~

:fun integer, an interface number (see `funptr`_)
: :funs integer vector, vector of interface number (see `funptr`_)
:



Description
~~~~~~~~~~~

The interface programs may be written in 2 different ways for the mode
of function argument passing.

In the first and default way, the arguments are passed by value. With
the following syntax:


::

    foo(A,1+2)


the argument associated with `A` will be passed by value (a copy of
`A` is made before `foo` is called), and the argument associated with
`1+2` will be passed by value.

In the second way arguments may be passed be reference if there are
"named arguments" (no copy of the variable value is done).
`intppty(fun)` with `fun>0` tells Scilab that the interface with
number `fun` can handle arguments passed by reference. With the
following syntax:


::

    foo(A,1+2)


the argument associated with `A` will be passed by reference, and the
argument associated with `1+2` will be passed by value.

Warning, declaring that the interface with number `fun` can handle
arguments passed by reference if it is not the case should produce
unpredictable results.

`intppty(fun)` with `fun<0` suppress this property for the interface
`-fun`.

`intppty()` returns the vector of interfaces which handle arguments
passed by reference.

This function may be useful for dynamically loaded interface (see
`addinter`_).



See Also
~~~~~~~~


+ `funptr`_ coding of primitives ( wizard stuff )
+ `addinter`_ new functions interface dynamic link at run time.


.. _funptr: funptr.html
.. _addinter: addinter.html


