


javasci FAQ
===========

The frequently asked questions for Javasci v2



Questions / Answers
~~~~~~~~~~~~~~~~~~~

: Running an application based on javasci, I get the error Exception
  in thread "main" java.lang.NoClassDefFoundError:
  org/scilab/modules/javasci/Scilab : org.scilab.modules.javasci.jar is
  probably not defined in the CLASSPATH. See `Compile and run with
  javasci`_


: The native library javasci2 does not exist or cannot be found. :
  java.library.path has not been set or cannot be found. `Compile and
  run with javasci`_


: The native library javasci2 does not exist or cannot be found even
  if java.library.path being set : If the error is something like:
  java.lang.UnsatisfiedLinkError:
  /path/to/scilab/lib/scilab/libscilab.so.0.0.0: libsciparameters.so.5:
  cannot open shared object file: No such file or directory , try to set
  LD_LIBRARY_PATH to the path where Scilab native libraries are.


: I try to plot a graphic but the graphic never appears. : Make sure
  that you called the constructor ( Scilab sci = new Scilab(true); )
  with the boolean value true . It starts Scilab in advanced mode.


: I would like to attach a graphic from Javasci to an existing Swing
  application. I don't know how to do that? : Well. For now, it is not
  possible out of the box. The feature should be available in a future
  version of Scilab. As always, contributions are welcome!


: I found the current way to manage Scilab graphic windows from
  javasci pretty hard. What should I do? : This is embarassing. We are
  aware that the current solution is far from perfect. We hope we will
  be able to tackle this limitation in a future release.


: The Scilab instance has some external modules but fails to start
  with an `undefined symbol:` : `atomsLoad: An error occurred while
  loading 'module-0.0.2': link : Library could not be loaded:
  /path/2.0-1/sci_gateway/c/../../src/cpp/libmy.so: undefined symbol:
  scirun_` There are two potential solutions. First is to fix the module
  itself to build with the library providing the symbol. The second is
  to define the missing declared library with
  `LD_PRELOAD=/path/to/the/lib/providing/the/symbol/libmy.so`




See Also
~~~~~~~~


+ Browse `the documentation of Javasci v2.`_ (this will open the web
  browser).
+ `Javasci`_ Call Scilab engine from a Java application
+ `Compile and run with javasci`_ How to compile a Java application
  using Javasci v2


.. _Compile and run with javasci: compile_and_run_javasci_v2.html
.. _Javasci: javasci.html
.. _the documentation of Javasci v2.: http://help.scilab.org/docs/5.4.0/javasci/javadoc/index.html


