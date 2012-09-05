


example_run
===========

Launch the examples found in help pages.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    example_run()
    example_run(moduleNames)
    example_run(moduleNames, functionNames)
    example_run(moduleNames, functionNames, language)
    example_run(moduleNames, functionNames, language, testrunOptions, testrunExportToFile)




Arguments
~~~~~~~~~

:moduleNames a string or a string vector: the name(s) of the modules
  to test. Default value is the value returned by `getmodules()`_.
: :functionNames a string or a string vector: the name(s) of the
  functions to test. If not given, all help pages of the module(s) will
  be tested.
: :language a string: the language of the help pages to test. Default
  value is "en_US".
: :testrunOptions Used as third input argument for `test_run`_.
: :testrunExportToFile Used as forth input argument for `test_run`_.
:



Description
~~~~~~~~~~~

This function extracts the examples given in help pages and run them
using `test_run`_.



Example
~~~~~~~


::

    example_run("core")
    example_run("core", "argn")
    example_run("core", ["argn"; "mode"])
    example_run("core", "argn", "en_US")




See Also
~~~~~~~~


+ `test_run`_ Launch tests




History
~~~~~~~
Version Description 5.4.0 Function example_run introduced.
.. _test_run: test_run.html
.. _getmodules(): getmodules.html


