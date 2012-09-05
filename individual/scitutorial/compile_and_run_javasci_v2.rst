


Compile and run with javasci v2
===============================

How to compile a Java application using Javasci v2



Description
~~~~~~~~~~~

To compile a Java code based on Javasci v2, it is only necessary to
have org.scilab.modules.javasci.jar and org.scilab.modules.types.jar
defined in the classpath.

For example, with the code defined in the example of this page, the
command would be:

on Linux/Unix/MacOSX:

`$ javac -cp $SCI/modules/javasci/jar/org.scilab.modules.javasci.jar:$
SCI/modules/types/jar/org.scilab.modules.types.jar BasicExample.java`

on Windows:

`D:\> javac -cp %SCI%\modules\javasci\jar\org.scilab.modules.javasci.j
ar;%SCI%\modules\types\jar\org.scilab.modules.types.jar
BasicExample.java`

To run Scilab, there are a few other things to set up.

Some global variables must me set:


+ SCI - Path to Scilab files

    + Linux/Unix/MacOSX:

        + In the binary version of Scilab, SCI will point to
          /path/to/scilab/share/scilab/
        + In the source tree of Scilab, SCI will point to the root of the
          source tree /path/to/scilab/source/tree/

    + Windows

        + path of scilab root directory: set SCI=C:\program files\scilab-XXX


+ LD_LIBRARY_PATH - Paths to libscilab.so, libscitypes.so and
  libjavasci2.so (or .jnilib...)

    + Linux/Unix/MacOSX:

        + In the binary version of Scilab, SCI will point to
          /path/to/scilab/lib/scilab/
        + In the source tree of Scilab, SCI will point to the root of the
          source tree /path/to/scilab/modules/javasci/.libs/,
          /path/to/scilab/modules/types/.libs/ and /path/to/scilab/.libs/

    + Windows: libscilab.dll, javasci.dll and others dll dependencies

        + equivalent to LD_LIBRARY_PATH on Windows is PATH set
          PATH="%SCI%\bin";%PATH%




To launch the Java Application, you can either provide them with
environnement variable


+ Linux/Unix/MacOSX:

    + `LD_LIBRARY_PATH=/path/to/libjavasci/ SCI=/path/to/scilab/ java -cp 
      $SCI/modules/javasci/jar/org.scilab.modules.javasci.jar:$SCI/modules/t
      ypes/jar/org.scilab.modules.types.jar:. BasicExample`


    + `SCI=/path/to/scilab/ java -Djava.library.path=/path/to/libjavasci/
      -cp $SCI/modules/javasci/jar/org.scilab.modules.javasci.jar:$SCI/modul
      es/types/jar/org.scilab.modules.types.jar:. BasicExample`
  or with the arguments
+ Windows: `set SCI=c:\program files\scilab-XXXX` `set
  PATH="%SCI%\bin";%PATH%` `D:\java -cp "%SCI%\modules\javasci\jar\org.s
  cilab.modules.javasci.jar";"%SCI%\modules\types\jar\org.scilab.modules
  .types.jar";. BasicExample`


Optional options to launch java : `-Djava.compiler=JIT -Xmx256m`

(With these arguments, you start javasci with same initial options
like the standard scilab).

Note that two environnement variables are taken in account for
specific needs:


+ `SCI_DISABLE_TK=1` Disables Tk (Tcl's GUI)
+ `SCI_JAVA_ENABLE_HEADLESS=1` Launch Java in headless mode (no
  AWT/Swing)




Examples
~~~~~~~~


::

    // A simple Java example 
    // javasci v2
    // Filename: BasicExample.java
    
    import org.scilab.modules.javasci.Scilab;
    
    class BasicExample {
    
        public static void main(String[] args) {
            try {
                Scilab sci = new Scilab();
                sci.open();
                sci.exec("a=cos(%pi)*sin(%pi^2);");
            } catch (org.scilab.modules.javasci.JavasciException e) {
                System.err.println("Could not find variable type: " + e.getLocalizedMessage());
            }
       }
    }




See Also
~~~~~~~~


+ Browse `the documentation of Javasci v2.`_
+ `Javasci`_ Call Scilab engine from a Java application
+ `Javasci FAQ`_ The frequently asked questions for Javasci v2


.. _Javasci FAQ: javasci_faq_v2.html
.. _Javasci: javasci.html
.. _the documentation of Javasci v2.: http://help.scilab.org/docs/5.4.0/javasci/javadoc/index.html


