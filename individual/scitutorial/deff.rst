


deff
====

on-line definition of function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    deff('[s1,s2,...]=newfunction(e1,e2,....)',text [,opt])




Arguments
~~~~~~~~~

:e1,e2,..., input variables.
: :s1,s2,..., output variables.
: :text matrix of character strings
: :opt optional character string
    :'c' function is "compiled" to be more efficient (default)
    : :'p' function is "compiled" and prepared for profiling (see profile)
    : :'n' function is not "compiled"
    :

:



Description
~~~~~~~~~~~

`deff` can be used to define functions from sequences of instructions
written in text strings. The resulting function object has the same
proprerties of any other function defined in a text file and loaded
with `exec`.

Quotes in the instructions (delimiting strings or meaning matrix
transposition) have to be doubled to be interpreted correctly (see
help quote). This can make writing up a little awkward. An option in
such cases is to define functions in files as usual, to load them into
Scilab by `exec` (with the `'n'` option) and to use `sci2exp` to get a
printout of corresponding `deff` instructions.



Examples
~~~~~~~~


::

    deff('[x]=myplus(y,z)','x=y+z')
    
    deff('[x]=mymacro(y,z)',['a=3*y+1'; 'x=a*z+y'])




See Also
~~~~~~~~


+ `comp`_ scilab function compilation
+ `exec`_ script file execution
+ `function`_ opens a function definition
+ `profile`_ extract execution profiles of a Scilab function


.. _exec: exec.html
.. _comp: comp.html
.. _function: function.html
.. _profile: profile.html


