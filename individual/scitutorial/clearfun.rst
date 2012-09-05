


clearfun
========

removes primitive



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ret=clearfun('name')




Arguments
~~~~~~~~~

:'name' name of primitive
: :ret a boolean
:



Arguments
~~~~~~~~~

:'name' name of primitive
: :ret a boolean
:



Description
~~~~~~~~~~~

`clearfun('name')` removes the primitive `'name'` from the set of
primitives (built-in functions). `clearfun` returns `%t` or `%f`. This
function allows to rename a primitive : a Scilab primitive can be
replaced by a user-defined function. For experts...



See Also
~~~~~~~~


+ `newfun`_ add a name in the table of functions
+ `funptr`_ coding of primitives ( wizard stuff )


.. _funptr: funptr.html
.. _newfun: newfun.html


