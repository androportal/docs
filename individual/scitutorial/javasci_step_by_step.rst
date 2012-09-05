


javasci - Step by step
======================

How to write an application based on javasci v2



Step 1 - The code itself
~~~~~~~~~~~~~~~~~~~~~~~~

Javasci v2 allows the call of Scilab engine from a Java API.

Some objects and methods are provided to perform such tasks. The main
class being Scilab . This object allows sending / receiving data from
the Scilab engine, error management or execution of Scilab
script/code.

Classes are split in two packages:


+ org.scilab.modules.javasci.*; // Contains the main Scilab class
+ org.scilab.modules.types.*; // Contains Scilab <=> Java mappings



Here is an example of a classical use-case:



::

    /*
          * Copyright (C) 2010 - DIGITEO - Sylvestre Ledru
          *
          * This file is released under the 3-clause BSD license. See COPYING-BSD.
          *
          */
          
          import org.scilab.modules.javasci.Scilab;
          import org.scilab.modules.types.ScilabType;
          import org.scilab.modules.types.ScilabDouble;
          
          class Example1 {
          
          public static void main(String[] args) {
          try {
          Scilab sci = new Scilab();
          if (sci.open()) {
          /* Send a Scilab instruction */
          sci.exec("foo = [ 2, 4, 6; 4, 0, 10; 6, 10, 12 ];");
          
          /* Retrieve the variable foo */
          ScilabType foo = sci.get("foo");
          
          /* Display the variable */
          System.out.println("Representation of  : "+foo);
          
          /* Get the data and retrieve the 2,2 value */
          double[][] aReal = ((ScilabDouble)foo).getRealPart();
          System.out.println("foo[1,1] = " + aReal[1][1]);
          
          /* Change the value of 2,2 */
          aReal[1][1] = Math.PI;
          
          /* Create a new variable */
          ScilabDouble bar = new ScilabDouble(aReal);
          
          /* Send it to Scilab */
          sci.put("bar",bar);
          
          /* Display it through Scilab */
          sci.exec("disp(bar)");
          
          sci.close();
          } else {
          System.out.println("Could not start Scilab ");
          }
          
          
          /* Can be improved by other exceptions: AlreadyRunningException,
          * InitializationException, UndefinedVariableException,
          * UnknownTypeException, etc
          */
          } catch (org.scilab.modules.javasci.JavasciException e) {
          System.err.println("An exception occurred: " + e.getLocalizedMessage());
          }
          }
          }


Note that the source are available in SCI/modules/javasci/examples/v2/

The output of the program will be:


::

    Representation of  : [2.0, 4.0, 6.0 ; 4.0, 0.0, 10.0 ; 6.0, 10.0, 12.0]
          foo[1,1] = 0.0
          
          2.    4.           6.
          4.    3.1415927    10.
          6.    10.          12.


For more information about the objects and methods, browse `the
documentation of Javasci v2.`_ (this will open the web browser).



Step 2 - Build
~~~~~~~~~~~~~~

Path to Scilab data is also expected under GNU/Linux and Mac OS X
(under Microsoft Windows, it is automatically detected).


::

    # Variable SCI
          # Under GNU/Linux with the Scilab binary, the path is:
          /path/to/scilab-xxx/share/scilab/
          # Under GNU/Linux `and`_ Mac OS X with the source tree, the path is the base of the source tree
          /path/to/scilab/sources/
          # Under Mac OS X, the path is:
          /Applications/scilab-xxx/Contents/MacOS/share/scilab/
          # On Windows, the path is:
          C:\Program Files\Scilab-5.3.0\


To build a code using Javasci v2, two jars files are necessary in the
CLASSPATH.


::

    # For example, create a variable CLASSPATH
    $(SCI)/modules/javasci/jar/org.scilab.modules.javasci.jar
    $(SCI)/modules/types/jar/org.scilab.modules.types.jar




Step 3 - Execution
~~~~~~~~~~~~~~~~~~

Like in the building step, both jars are expected.

Path(s) to native libraries have to be set in order for Java to
communicate with Scilab.

Two libraries are needed by Javasci v2 on load
libjavasci2.{so,dylib,dll} and libscilab.{so,dylib,dll}. Other Scilab
libraries will be loaded transparently.


::

    # For example, create a variable LIBPATH
          # Under GNU/Linux with the Scilab binary, the path is:
          /path/to/scilab-xxx/`lib`_/scilab/
          # Under GNU/Linux `and`_ Mac OS X with the source tree, the path is:
          $(SCI)/modules/javasci/.libs/:$(SCI)/modules/.libs/
          # Under Mac OS X, the path is:
          /Applications/scilab-xxx/Contents/MacOS/`lib`_/scilab/
          # Under Windows, the path is:
          `set`_ LIBPATH="C:\Program Files\Scilab-5.3.0\bin"


The command to launch the program is the following:


::

    java -cp $CLASSPATH:. -DSCI=$SCI -Djava.library.path=$LIBPATH Example1




A sample Makefile
~~~~~~~~~~~~~~~~~

A simple Makefile would be:


::

    SCI = /path/to/scilab/share/scilab/
          CLASSPATH = $(SCI)/modules/javasci/jar/org.scilab.modules.javasci.jar:$(SCI)/modules/types/jar/org.scilab.modules.types.jar
          LIB_PATH = /path/to/scilab/`lib`_/scilab
          all:
          javac -cp $(CLASSPATH) Example1.java
          java -cp $(CLASSPATH):. -DSCI=$(SCI) -Djava.library.path=$(LIB_PATH) Example1


See build.bat for Windows in SCI/modules/javasci/examples/v2
directory.



See Also
~~~~~~~~


+ Browse `the documentation of Javasci v2.`_ (this will open the web
  browser).
+ `Compile and run with Javasci v2`_
+ `Javasci v2 FAQ`_


.. _Javasci v2 FAQ: javasci_faq_v2.html
.. _Compile and run with Javasci v2: compile_and_run_javasci_v2.html
.. _the documentation of Javasci v2.: http://help.scilab.org/docs/5.4.0/javasci/javadoc/index.html


