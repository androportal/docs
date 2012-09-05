


atomsQuit
=========

Unload (call .quit file of) external modules previously loaded by
ATOMS



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = atomsQuit();




Arguments
~~~~~~~~~

:result scalar boolean %T or %F
:



Description
~~~~~~~~~~~

`atomsQuit`unload (call .quit file of) external modules previously
loaded by ATOMS.

This function is called by SCI/etc/scilab.quit



See Also
~~~~~~~~


+ `atomsIsLoaded`_ determines whether a module is loaded or not
+ `atomsGetLoaded`_ Get the list of loaded external modules
+ `atomsInstall`_ Get the list of loaded external modules




History
~~~~~~~
Version Description 5.4.0 This function added in Scilab 5.4.0
.. _atomsIsLoaded: atomsIsLoaded.html
.. _atomsInstall: atomsGetLoaded.html


