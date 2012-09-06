


atomsTest
=========

Execute tests of given module installed



Calling Sequence
~~~~~~~~~~~~~~~~


::

    status = atomsTest(module)
    status = atomsTest(module, test_name)




Arguments
~~~~~~~~~

:module mx1 Matrix of strings: *1st Col.* *Technical name* Mandatory
: :test_name A string array
: :status boolean value %t or %f Returns %t if no error has been
  detected Returns %f if any error has been detected
:



Description
~~~~~~~~~~~

`atomsTest` executes all the tests provided by the module and print
their results.



Example
~~~~~~~

*Example 1*: Test a module already installed


::

    // Display some additionnal information
          `atomsSetConfig`_("Verbose","True");
          
          // Get the list of loaded modules:
          `atomsGetLoaded`_();
          
          //Supposing that toolbox_1 is installed, test :
          atomsTest("toolbox_1");




Explanations on the printing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*Example 1*: result of atomsTest("apifun")


::

    atomsTest("apifun")
         TMPDIR = /var/folders/z+/z+tSde0-FIufFmhuoUJtjE+++TI/-Tmp-//SCI_TMP_17720_kcOsmV
         
         001/019 - [SCI/contrib/apifun/0.2-2] argindefault...............passed
         002/019 - [SCI/contrib/apifun/0.2-2] checkcallable..............passed
         003/019 - [SCI/contrib/apifun/0.2-2] checkdims..................passed
         004/019 - [SCI/contrib/apifun/0.2-2] checkflint.................passed
         005/019 - [SCI/contrib/apifun/0.2-2] checkgreq..................passed
         006/019 - [SCI/contrib/apifun/0.2-2] checklhs...................passed
         007/019 - [SCI/contrib/apifun/0.2-2] checkloweq.................passed
         008/019 - [SCI/contrib/apifun/0.2-2] checkoption................passed
         009/019 - [SCI/contrib/apifun/0.2-2] checkrange.................passed
         010/019 - [SCI/contrib/apifun/0.2-2] checkrhs...................passed
         011/019 - [SCI/contrib/apifun/0.2-2] checkscalar................passed
         012/019 - [SCI/contrib/apifun/0.2-2] checksquare................passed
         013/019 - [SCI/contrib/apifun/0.2-2] checktype..................passed
         014/019 - [SCI/contrib/apifun/0.2-2] checkveccol................failed  : dia `and`_ ref are not equal
         015/019 - [SCI/contrib/apifun/0.2-2] checkvecrow................passed
         016/019 - [SCI/contrib/apifun/0.2-2] checkvector................failed  : dia `and`_ ref are not equal
         017/019 - [SCI/contrib/apifun/0.2-2] complete...................passed
         018/019 - [SCI/contrib/apifun/0.2-2] complete2..................passed
         019/019 - [SCI/contrib/apifun/0.2-2] expandvar..................passed
         
         --------------------------------------------------------------------------
         Summary
         
         tests                       19 - 100 %
         passed                      17 -  89 %
         failed                       2 -  10 %
         skipped                      0 -   0 %
         `length`_                          26.34 sec
         --------------------------------------------------------------------------
         Details
         
         
         TEST : [SCI/contrib/apifun/0.2-2] checkveccol
         failed  : dia `and`_ ref are not equal
         Compare the following files :
         - /var/folders/z+/z+tSde0-FIufFmhuoUJtjE+++TI/-Tmp-//SCI_TMP_17720_kcOsmV/checkveccol.dia
         - /Users/scilab/Desktop/scilab-5.3.3.app/Contents/MacOS/share/scilab/contrib/apifun/0.2-2/tests/unit_tests/checkveccol.dia.ref
         
         TEST : [SCI/contrib/apifun/0.2-2] checkvector
         failed  : dia `and`_ ref are not equal
         Compare the following files :
         - /var/folders/z+/z+tSde0-FIufFmhuoUJtjE+++TI/-Tmp-//SCI_TMP_17720_kcOsmV/checkvector.dia
         - /Users/scilab/Desktop/scilab-5.3.3.app/Contents/MacOS/share/scilab/contrib/apifun/0.2-2/tests/unit_tests/checkvector.dia.ref
         
         
         --------------------------------------------------------------------------
         ans  =
         
         %f


TMPDIR is the general folder where all the temporary files of the
tests will be saved. The list of the tests is then shown, with their
endings.

*Possible endings* *passed* Test ended up successfully *failed :
error_output not empty* A line has been printed whereas it should not
have *failed : dia and ref are not equal* You have a difference
between your result and what it should have been (reference) *failed :
premature end of the test script* Something stopped the test before it
had time to finish normally *unknown* You have an error that doesn't
match any of our usual situations *failed : the ref file doesn't
exist* The test needs a reference file to compare its result *failed :
the dia file is not correct* The file produced by the test isn't
correctly formatted *failed : the string (!--error) has been detected*
The test script produced an error that might have been masked by the
rest of the test *skipped : interactive test* The test needs an action
from your part, and has been skipped as you are in non interactive
mode *skipped : not yet fixed* The bug is reported, however the
developer did not have time to fix it *failed : bug reopened* This bug
used to be fixed, but it came back to an instable status and is
waiting another fix from its developer *skipped : test with graphic*
When a test is graphic and scilab is launched without graphic *skipped
: Long time duration* This test is too long to be tested. Usually
appears on Scilab's test chain *skipped : Windows only* You are under
another OS than Windows, and this test is only available for Windows
platforms *skipped : MacOSX only* You are under another OS than
MacOSX, and this test is only available for Mac platforms *skipped :
Linux only* You are under another OS than Linux, and this test is only
available for Linux platforms You then have a summary of the
execution, indicating how many tests were skipped, failed or suceed,
and the duration time of the whole. In details, you have a report for
each test that failed, indicating where to check for error logs.



See Also
~~~~~~~~


+ `atomsInstall`_ Determines whether the module is installed. Returns
  true if the module is installed, false otherwise.
+ `atomsLoad`_ Load one or several external modules
+ `test_run`_ Launch tests
+ `assert`_ An overview of the Assert module.




History
~~~~~~~
Version Description 5.4.0 atomsTest returns a status:

+ Returns %t if no error has been detected
+ Returns %f if any error has been detected

5.4.0 atomsTest manages specific test names.
.. _atomsInstall: atomsIsInstalled.html
.. _atomsLoad: atomsLoad.html
.. _test_run: test_run.html
.. _assert: assert_overview.html


