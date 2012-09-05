


feval (Matlab function)
=======================

Function evaluation



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `feval`_



::

    `evstr`_ - execstr




Particular cases
~~~~~~~~~~~~~~~~

:One output: In this case Scilab **evstr** is an equivalent to
  **feval**, after modifying inputs such as in examples below.
: :More than one output: In this case Scilab **execstr** is an
  equivalent to **feval**, after modifying inputs such as in examples
  below.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    [y1] = `feval`_(@`cos`_,0)
    [y1,y2] = `feval`_(@`size`_,1)



::

    y1 = `evstr`_("cos(0)")
    `execstr`_("[y1,y2] = size(1)")




