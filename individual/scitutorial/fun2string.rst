


fun2string
==========

generates ascii definition of a scilab function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    txt=fun2string(fun,name)




Arguments
~~~~~~~~~

:fun a function type variable
: :name a character string, the generated function name
: :txt a column vector of strings, the text giving the scilab
  instructions
:



Description
~~~~~~~~~~~

Given a loaded Scilab function pseudo-code fun2string allows to re-
generate the code. The generated code is indented and beautified.

The mechanism is similar, but simpler than the mfile2sci one. It may
be adapted for syntax translations.



Examples
~~~~~~~~


::

    txt=fun2string(`asinh`_,'foo');
    `write`_(%io(2),txt,'(a)')




See Also
~~~~~~~~


+ `exec`_ script file execution
+ `edit`_ function editing
+ `macrovar`_ variables of function


.. _exec: exec.html
.. _edit: edit.html
.. _macrovar: macrovar.html


