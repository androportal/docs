


Compile and run with Call Scilab
================================

How to compile a native application based on or using Scilab



Compilation
~~~~~~~~~~~

To compile a native code based on Call Scilab, it is necessary to
define some arguments, variables and paths.


+ CFLAGS. Call Scilab needs to have access to the headers of Scilab
  core and call Scilab module.

    + Linux/Unix/MacOSX:

        + In the binary version of Scilab, CFLAGS must be set to
          /path/to/scilab/include/scilab/core/ and
          /path/to/scilab/include/scilab/call_scilab/
        + In the source tree of Scilab, CFLAGS must be set to
          /path/to/scilab/modules/core/includes/ and
          /path/to/scilab/modules/call_scilab/includes/

    + Windows

+ LD_LIBRARY_PATH - Paths to libscilab.so and libjavasci.so (or .dll,
  .jnilib...)

    + Linux/Unix/MacOSX:

        + In the binary version of Scilab, SCI will point to
          /path/to/scilab/lib/scilab/
        + In the source tree of Scilab, SCI will point to the root of the
          source tree /path/to/scilab/modules/call_scilab/.libs/ and
          /path/to/scilab/.libs/


+ LDFLAGS - The name of the library to link against

    + Linux/Unix/MacOSX: It is only mandatory to link against scilab. This
      should include the other libraries.



The following example is a Makefile to build against Scilab binary


::

    # A `sample`_ Makefile building a C code using Call Scilab using Scilab binary
    PATH_SCILAB = /path/to/scilab/ 
    # Note that PATH_SCILAB can be /usr/ is using a packaged version of Scilab.
    SCILAB_CFLAGS = -I$(PATH_SCILAB)/include/scilab/
    SCILAB_LDFLAGS = -lscilab
    PATH_TO_LIB_SCILAB = $(PATH_SCILAB)/`lib`_/scilab/
    PATH_TO_LIB_CALL_SCILAB = $(PATH_SCILAB)/`lib`_/scilab/
    
    all: simple_call_scilab.c
        export LD_LIBRARY_PATH=$(PATH_TO_LIB_SCILAB):$(PATH_TO_LIB_CALL_SCILAB)
        gcc -o myExample $(SCILAB_LDFLAGS) -L$(PATH_TO_LIB_SCILAB) -L$(PATH_TO_LIB_CALL_SCILAB) $(SCILAB_CFLAGS) simple_call_scilab.c


The following example is a Makefile to build against Scilab source
tree


::

    # A `sample`_ Makefile building a C code using Call Scilab using Scilab built in it source tree.
    PATH_SCILAB = /path/to/scilab/sources/
    SCILAB_CFLAGS = -I$(PATH_SCILAB)/modules/core/includes/ -I$(PATH_SCILAB)/modules/call_scilab/includes/
    SCILAB_LDFLAGS = -lscilab
    PATH_TO_LIB_SCILAB = $(PATH_SCILAB)/modules/.libs/
    PATH_TO_LIB_CALL_SCILAB = $(PATH_SCILAB)/modules/call_scilab/.libs/
    
    all: simple_call_scilab.c
        export LD_LIBRARY_PATH=$(PATH_TO_LIB_SCILAB):$(PATH_TO_LIB_CALL_SCILAB)
        gcc -o myExample $(SCILAB_LDFLAGS) -L$(PATH_TO_LIB_SCILAB) -L$(PATH_TO_LIB_CALL_SCILAB) $(SCILAB_CFLAGS) simple_call_scilab.c




Running
~~~~~~~

To run an application based on Call Scilab, there are a few other
things to set up.

Some global variables must me set:


+ SCI - Path to Scilab files

    + Linux/Unix/MacOSX:

        + In the binary version of Scilab, SCI will point to
          /path/to/scilab/share/scilab/
        + In the source tree of Scilab, SCI will point to the root of the
          source tree /path/to/scilab/source/tree/

    + Windows:

+ LD_LIBRARY_PATH - Paths to libscilab.so and libjavasci.so (or .dll,
  .jnilib...)

    + Linux/Unix/MacOSX:

        + In the binary version of Scilab, SCI will point to
          /path/to/scilab/lib/scilab/
        + In the source tree of Scilab, SCI will point to the root of the
          source tree /path/to/scilab/modules/javasci/.libs/ and
          /path/to/scilab/.libs/


+ LD_LIBRARY_PATH (Java) - Paths to Java native libraries (libjava.so,
  libjvm.so, libhpi.so)... It is usually provided by the operating
  system or by Scilab distribution. Please note that won't be necessary
  in Scilab 5.2

    + Linux/Unix:

        + JAVA_HOME/jre/lib/<arch>/, JAVA_HOME/jre/lib/<arch>/server,
          JAVA_HOME/jre/lib/<arch>/native_threads/ (<arch> can be i386, etc...)

    + Mac OS X:
    + Windows



Note that two environnement variables are taken in account for
specific needs:


+ `SCI_DISABLE_TK=1` Disables Tk (Tcl's GUI)
+ `SCI_JAVA_ENABLE_HEADLESS=1` Launch Java in headless mode (no
  AWT/Swing)




Examples
~~~~~~~~


::

    # Serie of declarations to execute my binary.
    
    # With a Scilab source tree:
    $ SCI=<path to Scilab source tree>
    $ export LD_LIBRARY_PATH=$SCI/modules/.libs/:$SCI/modules/call_scilab/.libs/:$SCI/modules/api_scilab/.libs
    
    # With a Scilab binary:
    $ SCI_PATH=<path to Scilab binary>
    $ export LD_LIBRARY_PATH=$SCI_PATH/`lib`_/scilab/
    
    # Set the path to Java Virtual Machine library; This is mandatory for graphics features
    # Don't forget to update arch (i386) `and`_ paths to whatever is necessary
    $ export JAVA_HOME=/usr/`lib`_/jvm/java-6-openjdk/
    $ export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$JAVA_HOME/jre/`lib`_/i386/:$JAVA_HOME/jre/`lib`_/i386/server/
    $ export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$JAVA_HOME/jre/`lib`_/i386/native_threads/
    $ export SCI=/path/to/scilab/
    $ ./myExample
    !sample  for the `help`_  !
     
      - 42.    42.




See Also
~~~~~~~~


+ `api Scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `call_scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code
+ `StartScilab`_ Initializes and starts Scilab engine in Call Scilab
+ `SendScilabJob`_ Send a Scilab task from a C/C++ code (call_scilab)
+ `SendScilabJobs`_ Send Scilab tasks from a C/C++ code (call_scilab)
+ `Double Management`_ How to manage Scilab's variable read and write
  process using call_scilab and api_scilab
+ `Boolean Management`_ How to manage Scilab's boolean read and write
  process using call_scilab and api_scilab
+ `Complex Management`_ How to manage Scilab's complex variable read
  and write process using call_scilab
+ `String Management`_ How to manage Scilab's String read and write
  process using call_scilab and api_scilab


.. _StartScilab: StartScilab.html
.. _Double Management: DoubleManagement_callscilab.html
.. _call_scilab: call_scilab.html
.. _api Scilab: api_scilab.html
.. _Boolean Management: BooleanManagement_callscilab.html
.. _String Management: StringManagement_callscilab.html
.. _Complex Management: ComplexManagement_callscilab.html
.. _SendScilabJobs: SendScilabJobs.html
.. _SendScilabJob: SendScilabJob.html


