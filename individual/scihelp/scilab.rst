


scilab
======

Main script to start Scilab and miscellaneous tools (GNU/Linux, Unix
and Mac OS X)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    scilab <Options>
    scilab-adv-cli <Options>
    scilab-cli <Options>




Description
~~~~~~~~~~~

:-args Arguments If this option is present, arguments are passed to
  Scilab. They can then be got by `sciargs`_ function. For multi
  arguments passing use a quoted, blank separated sequence of words
  like: `scilab -args 'foo1 foo2'` .Without this option, unknown
  arguments will not be accepted.
: :-display Display For use under Xwindow systems only to set a
  specific X server display. Default display is unix:0.0. `-display` can
  be abbreviated by `-d`.
: :-debug Start Scilab under the debugguer gdb (Unix/Linux/Mac OS X
  only). Define the variable `SCILAB_GDB_OPT` to add custom options to
  gdb. Advise: use this option on a Scilab source tree.
: :-debug-kdbg Start Scilab under kdbg (Unix/Linux/Mac OS X only).
  Advise: use this option on a Scilab source tree.
: :-profiling Start Scilab under valgrind (Unix/Linux/Mac OS X only).
  Define the variable SCILAB_VALGRIND_OPT to add custom options to
  valgrind (and override the existing valgrind options). Advise: use
  this option on a Scilab source tree.
: :-profiling-visu Start Scilab under callgrind (Unix/Linux/Mac OS X
  only). Define the variable SCILAB_VALGRIND_OPT to add custom options
  to callgrind (and override the existing callgrind options). Advise:
  use this option on a Scilab source tree.
: :-electric-fence Start Scilab with the Electric Fence
  (Unix/Linux/Mac OS X only). Advise: use this option on a Scilab source
  tree.
: :-e Instruction If this option is present then Scilab instruction
`Instruction` is executed first (just after startup file execution)
into Scilab. `-e` and `-f` options are mutually exclusive. Note that
several instructions can be used in with `-e`.

::

    scilab-cli -e  "a=1+%i; aPlusPi=a+%pi; disp(aPlusPi);exit;" -nb


: :-f file If this option is present then Scilab script `file` is
  executed first (just after startup file execution) into Scilab. `-e`
  and `-f` options are mutually exclusive. A file with .xcos extension
  will be opened by Xcos.
: :-l lang If this option is present it fixes the user language.
*lang* can be: *ca_ES de_DE en_US es_ES fr_FR ja_JP pt_BR ru_RU zh_CN
zh_TW* (from Scilab 5.2). Other possible `lang` values are `'fr'` for
french and `'en'` for english for compatibility reasons. The default
language is english. This default value is fixed the `scilab.start`
file. On some systems, locales must be compiled to render correctly
UTF-8 fonts. Scilab can be also called the following way:

::

    LANG=ja_JP scilab
                # equivalent to
                scilab -l ja_JP


: :-mem N Set the initial `stacksize`, for use with `-ns` option.
  Without `-ns` option the initial `stacksize` is set by `scilab.start`
  script.
: :-nb If this option is present then the scilab welcome banner is not
  displayed.
: :-ns If this option is present the startup file
  `SCI/etc/scilab.start` and the user startup files `SCIHOME/.scilab`,
  `SCIHOME/scilab.ini` are not executed. This option will disable many
  features in Scilab (Only use if you know what you are doing).
: :-nouserstartup If this option is present the user startup files
  `SCIHOME/.scilab`, `SCIHOME/scilab.ini` are not executed.
: :-noatomsautoload If this option is present the ATOMS modules
  previously installed are not loaded for this session.
: :-nw If this option is present, Scilab is started as command line
with advanced features still available (graphics, export, xcos,
scinotes, help browser, ...). This option may be used with `-f` or
`-e` options. From Scilab 5.2:

    + Scilab distribution also provides a dedicated binary which is doing
      the same as `-nw`: `scilab-adv-cli` (Scilab Advanced Command Line
      Interpreter).
    + pipes are enabled for all operating systems (see the examples for
      further details).

: :-nwni / -nogui If this option is present, Scilab is started as
command line without advanced features (graphics, export, xcos,
scinotes, help browser, ...). This option may be used with `-f` or
`-e` options. From Scilab 5.2:

    + Scilab distribution also provides a dedicated binary which is doing
      the same as `-nwni`: `scilab-cli` (Scilab Command Line Interpreter).


    + pipes are enabled for all operating systems (see the examples for
      further details).
This mode does not load the Java Virtual Machine (faster to start and
  uses less memory).
: :--texmacs This option is reserved for TeXMacs. Please install ATOMS
module:

::

    `atomsInstall`_('texmacs')


: :-version This option prints product version and exits.
:



Description of environment variables
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:SCIVERBOSE If this variable is present, Scilab startup script will
  show a startup debug information. Mainly used for bug report and
  debugging purposes.
: :JAVA_HOME Specify which Java to use. For example,
  `JAVA_HOME=/usr/lib/jvm/java-7-openjdk/ scilab` will start Scilab with
  Java 7.
: :SCI_DISABLE_TK Disable Tk (but not Tcl) features.
: :SCI_JAVA_ENABLE_HEADLESS Enable Java Headless VM (i.e. without GUI
  features).
:



Java Virtual Machine options
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Starting from Scilab 5.0, the graphical user interface (GUI) and the
build documentation are based on Java features. In some cases, it can
be important to edit the JVM options (Java Virtual Machine).

These options are available in the *jvm_options.xml* file.

In version 5.0.X and 5.1.X, this file is stored as
*SCI/modules/jvm/etc/jvm_options.xml*.

In version >= 5.2.0, the file is available in *etc/jvm_options.xml*.

*By default, the three following options are easily accessible in the
configuration file:*

:-XmxXXXm This option set the amount of memory available by the Java
  Virtual Machine. By default, 256M are allocated. If you change this
  value, check that the value does not exceed the memory available on
  the system. Since Scilab 5.4.0, this value can be changed in the
  preferences menu.
: :-Djava.compiler=JIT This option with the argument *JIT* enables the
  Java Just In Time compiler. It is activated by default. *NONE*
  disables the JIT and decreases dramatically performances.
: :-verbose:jni / -Xcheck:jni These options enable more checks and
  output from the JNI calls. These options are useful in case of
  debugging and are disabled by default since they decreases
  performances.
:

Many more options are available. They can improve the performances,
change look and feel, change memory managements... See:
`http://www.oracle.com/technetwork/java/javase/tech/vmoptions-
jsp-140102.html`_.



Examples
~~~~~~~~


::

    # Let's start Scilab in profiling `mode`_ without attaching a gdb once a SIGSEGV is met.
    # We are under Bash shell
    export SCILAB_VALGRIND_OPT="--db-attach=no --log-file=myfile.txt"
    scilab -profiling
    
    # Let's start Scilab in `debug`_ mode without stopping after each SIGSEGV
    # First, we `write`_ a small command file
    echo "handle SIGSEGV nostop" &> `debug`_.txt
    # Now `set`_ the custom option
    # We are under Bash shell
    export SCILAB_GDB_OPT="--command=debug.txt"
    # Start Scilab in `debug`_ mode
    scilab -`debug`_



::

    # Under GNU/Linux, Mac OS X `or`_ Unix:
    $ echo "disp(%pi)"|scilab-cli
    `or`_
    $ echo "disp(%pi)"|scilab -nwni
    
    # Only open the Scilab `help`_ window:
    $ scilab-adv-cli -e "help()"
    `or`_
    $ scilab -nw -e "help()"
    
    # Scilab can be used for scripting aspects:
    echo "if 1<>2 then exit(99) end"|scilab-cli
    echo $?




See Also
~~~~~~~~


+ `exit`_ Ends the current Scilab session
+ `startup`_ startup files




History
~~~~~~~
Version Description 5.4.0 -noatomsautoload added.
.. _exit: exit.html
.. _http://www.oracle.com/technetwork/java/javase/tech/vmoptions-jsp-140102.html: http://www.oracle.com/technetwork/java/javase/tech/vmoptions-jsp-140102.html
.. _sciargs: sciargs.html
.. _startup: startup.html


