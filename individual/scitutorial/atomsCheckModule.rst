


atomsCheckModule
================

Check the given list of ATOMS modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    isok = atomsCheckModule(modulenames)
    isok = atomsCheckModule(modulenames, bVerbose)




Arguments
~~~~~~~~~

:modulenames mxn matrix of strings: the names of the modules to check
: :bVerbose a 1-by-1 matrix of booleans, set to true to display
  messages
:



Description
~~~~~~~~~~~

`atomsCheckModule` Installs, loads, launches the tests and removes all
the modules listed in `modulenames`.



Example
~~~~~~~


::

    atomsCheckModule("scibench")
        atomsCheckModule(["apifun" "scibench"],%t)




See Also
~~~~~~~~


+ `atomsTest`_ Execute tests of given module installed
+ `test_run`_ Launch tests
+ `assert`_ An overview of the Assert module.




History
~~~~~~~
Version Description 5.4.0 This function was added in Scilab 5.4.0
.. _atomsTest: atomsTest.html
.. _assert: assert_overview.html
.. _test_run: test_run.html


