


test_run
========

Launch tests



Calling Sequence
~~~~~~~~~~~~~~~~


::

    status = test_run()
    status = test_run(module)
    status = test_run(module, test_name)
    status = test_run(module, test_name, options, exportToFile)




Arguments
~~~~~~~~~

:module A String array. This input argument must be

    + the name of an internal Scilab module ("core", "time", ...) or a
      sub-module (e.g. "optimization|neldermead").
    + the name of an ATOMS module ("module_lycee", "nisp", ...). To be
      taken into account, the module must be loaded when test_run() is
      called.
    + the absolute directory path of a module.

: :test_name A string array
: :options A string array
    :no_check_ref does not check if the .dia and .dia.ref are equal
    : :no_check_error_output The error output stream is not checked. This
      option can be used when Scilab complains about the localization being
      not available.
    : :create_ref create the .dia.ref file and does not check if the .dia
      and .dia.ref are equal
    : :show_error If an error occurs, show the last 10 lines of the
      execution
    : :show_diff If a difference is found, show the result of the command
      `diff -u`
    : :list Does not perform the tests but displays a list of available
      tests
    : :help display some examples about how to use this command
    : :mode_nw Add the "-nw" option to the launch
    : :mode_nwni Add the "-nwni" option to the launch
    : :nonreg_test runs only the non-regression tests, skipping unit tests
    : :unit_test Runs only the unit tests, skipping non-regression tests
    : :skip_tests Skip the tests
    : :enable_lt Enable long-time execution tests
    : :short_summary Does not display statistics nor execution time after
      execution (only number of executed, passed, failed and skipped tests
      will be displayed on a single line).
    :

: :exportToFile Export to a XML file the result of the test. This file
  follows the specification of the XUnit format. Note that the usage of
  this option enables `show_diff` and `show_error`. If the file pointed
  by `exportToFile` already exists, the new result will be added to the
  existing file.
: :status Boolean value Returns %t if no error has been detected
  Returns %f if any error has been detected
:



Description
~~~~~~~~~~~

Search for .tst files in the unit test and non-regression test library
execute them, and display a report about success of failures. The .tst
files are searched in directories SCI+"/modules/*/tests/unit_tests"
and SCI+"/modules/*/tests/nonreg_tests". Whenever a test is executed,
a .dia file is generated which contains the full list of commands
executed along with message which appears in the console. When the
script is done, the .dia file is compared with the .dia.ref file which
is expected to be in the same directory as the .tst file. If the two
file are different, the test fails.

Special tags may be inserted in the .tst file, which help to control
the processing of the corresponding test. These tags are expected to
be found in Scilab comments.

These are the available tags:


+ <-- INTERACTIVE TEST --> This test will be skipped because it is
  interactive.
+ <-- LONG TIME EXECUTION --> This test will be skipped because it
  needs long-time duration. To enable the test, call test_run with the
  following option: "enable_lt"
+ <-- NOT FIXED --> This test will be skipped because it is a known,
  but unfixed bug.
+ <-- TEST WITH GRAPHIC --> This test will not be executed if the
  option "mode_nwni" is used.
+ <-- NO TRY CATCH -->
+ <-- NO CHECK ERROR OUTPUT --> The error output file is not checked
+ <-- NO CHECK REF --> The .dia and the .dia.ref files are not
  compared.
+ <-- ENGLISH IMPOSED --> This test will be executed with the -l en_US
  option.
+ <-- FRENCH IMPOSED --> This test will be executed with the -l fr_FR
  option.
+ <-- CLI SHELL MODE --> (was: <-- JVM NOT MANDATORY -->) This test
  will be executed with scilab-cli (nwni mode) by default.
+ <-- WINDOWS ONLY --> If the operating system isn't Windows, the test
  is skipped.
+ <-- UNIX ONLY --> If the operating system isn't an Unix OS, the test
  is skipped.
+ <-- LINUX ONLY --> If the operating system isn't GNU/Linux, the test
  is skipped.
+ <-- MACOSX ONLY --> If the operating system isn't Mac OS X, the test
  is skipped.
+ <-- XCOS TEST --> This test will launch all the necessary Xcos libs.
  This test will be launched in nw mode.


Each test is executed in a separated process, created with the "host"
command. That enables the current command to continue, even if the
test as created an unstable environment. It also enables the tests to
be independent from one another.



Platform-specific tests
~~~~~~~~~~~~~~~~~~~~~~~

It may happen that the output of a test depends on the platform on
which it is executed. In this case, the `.ref` file cannot be correct
for all platforms and unit tests may fail for some platform. In this
case, we can create a default `.ref` and create additionnal `.ref`
file for each platform.

The various platform-specific `.ref` files must have one of the
following extensions.


+ `.unix.dia.ref` for Unix platform,
+ `.linux.dia.ref` for GNU/Linux platform,
+ `.win.dia.ref` for Windows platform,
+ `.macosx.dia.ref` for Mac OS X platform.


The algorithm is the following. First, the `.ref` is considered. If
this file does not exist, the platform-specific `.ref` file is
examined depending on the current platform.


+ on Windows platforms: `.win.dia.ref`,
+ on Max OS X platforms: `.unix.dia.ref`, `.macosx.dia.ref`,
+ on GNU/Linux platforms: `.unix.dia.ref`, `.linux.dia.ref`.




Examples
~~~~~~~~


::

    // Launch all tests
    // =============================================
    
    test_run();
    test_run([]);
    test_run([],[]);
    
    // Test one or several module
    // =============================================
    
    // Test one module
    test_run('time');
    
    // Test several modules
    test_run(['time','string']);
    
    // Test a submodule
    test_run('optimization|neldermead');
    
    // Refer to a module by its path
    test_run(SCI+'/modules/core');
    
    // Launch a specific test
    // =============================================
    
    // One specific test
    test_run('time','datenum');
    
    // Several tests
    test_run('time',['datenum';'calendar']);
    
    // Skip some tests
    // =============================================
    
    test_run('time',['datenum';'calendar'],'skip_tests');
    
    // Options
    // =============================================
    
    // does not check if the .dia and .dia.ref are equal
    test_run('time','datenum','no_check_ref');
    
    // Create the .dia.ref file and does not check if the .dia and .dia.ref are equal
    test_run([],[],'create_ref');
    
    // Does not perform the tests but displays a list of available tests
    test_run([],[],'list');
    
    // Display some examples about how to use this command
    test_run([],[],'help');
    
    // Runs only the non-regression tests, skipping unit tests
    test_run([],[],'nonreg_test');
    
    // Runs only the unit tests, skipping non-regression tests
    test_run([],[],'unit_test');
    
    // Do not check the error output (std err)
    test_run('boolean','bug_2799','no_check_error_output');
    
    // Combine several options
    test_run([],[],['no_check_ref','mode_nw']);



::

    // Run unitary tests of an external module (with his path)
    test_run('SCI/contrib/toolbox_skeleton')



::

    // Export to a XML Xunit file
    test_run('boolean',[],[],TMPDIR+"/boolean_test_run.xml");
    test_run('time','datenum',[],TMPDIR+"/time_datenum_test_run.xml");




Internal Design
~~~~~~~~~~~~~~~

The tests are performed in the temporary directory, not in the
directory which originaly contain the tests files. The .tst file is
copied into the temporary directory, the test is performed and the
.dia.ref is copied back into the original location.

The .tst script is not run as is. Instead, a header and a footer are
inserted at the beginning and at the end of the .tst at the time the
script is copied into the temporary directory. The role of this
modification is to redirect the output messages into the .dia file, so
that the user can have a log file once the test is performed.



History
~~~~~~~
Version Description 5.4.0 test_run returns a status:

+ Returns %t if no error has been detected
+ Returns %f if any error has been detected


`show_diff` and `show_error` added as new options

`CLI SHELL MODE` tag is added. Replaces `JVM NOT MANDATORY` (still
supported)

`test_run` can work on an external module.

Fourth argument added to export to a XML file



