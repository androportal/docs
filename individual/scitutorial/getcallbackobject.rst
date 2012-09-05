


getcallbackobject
=================

Return the handle of the object whose callback is executing.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    h = getcallbackobject(objectUID)




Arguments
~~~~~~~~~

:h Handle: the handle of the object whose callback is executing.
: :objectUID String: UID of the Java object.
:



Description
~~~~~~~~~~~

`getcallbackobject` is used to automatically create Scilab variable
called `gcbo`_ each time a callback in executed.

`getcallbackobject` returns [] if no callback is currently executed.

`getcallbackobject` must not be used directly out of a Java callback.



See Also
~~~~~~~~


+ `gcbo`_ Handle of the object whose callback is executing.


.. _gcbo: gcbo.html


