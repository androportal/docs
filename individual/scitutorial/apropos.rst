


apropos
=======

searches keywords in Scilab help



Calling Sequence
~~~~~~~~~~~~~~~~


::

    apropos(key)
    apropos(regexp)




Arguments
~~~~~~~~~

:key character string. give the sequence of characters to be found
: :regexp character string. give the regular expression to be found
  (only with "Scilab Browser")
:



Description
~~~~~~~~~~~

`apropos(key)` looks for Scilab help files containing keywords `key`in
their short description section.

`apropos(regexp)` looks for Scilab help files containing regular
expression `regexp`in their short description section.



Examples
~~~~~~~~


::

    apropos('ode')
    apropos ode 
    apropos "list of"
    apropos "sin.*hyperbolic"
    apropos "^ab"  //search help beginning the two characters "ab"
    apropos "quadratic.*solver"




See Also
~~~~~~~~


+ `help`_ on-line help command
+ `man`_ on line help XML file description format


.. _man: man.html
.. _help: help.html


