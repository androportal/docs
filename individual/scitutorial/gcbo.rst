


gcbo
====

Handle of the object whose callback is executing.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    gcbo




Description
~~~~~~~~~~~

`gcbo` is a Scilab variable automatically created each time a callback
in executed. This variable is initialised using `getcallbackobject`_.

`gcbo` does not exists in Scilab environment if no callback is
currently executed.

You can use `gcbo` in callback functions particularly if you write a
single callback function for multiple objects, it helps you to know
which object received a user action.



See Also
~~~~~~~~


+ `getcallbackobject`_ Return the handle of the object whose callback
  is executing.


.. _getcallbackobject: getcallbackobject.html


