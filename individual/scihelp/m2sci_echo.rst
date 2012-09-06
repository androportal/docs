


echo (Matlab function)
======================

Echo lines during execution



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    echo



::

    `mode`_




Particular cases
~~~~~~~~~~~~~~~~

Scilab **mode** and Matlab **echo** are not exactly equivalents but
they both change the information displayed during execution. Scilab
**mode** has to be called inside a script or a function but Matlab
**echo** can be called from prompt. However, some uses are equivalents
such as:

:echo is equivalent to Scilab **mode(abs(mode()-1))** for scripts and
  non-compiled functions
: :echo on is equivalent to Scilab **mode(1)** for scripts and non-
  compiled functions
: :echo off is equivalent to Scilab **mode(0)**
:



