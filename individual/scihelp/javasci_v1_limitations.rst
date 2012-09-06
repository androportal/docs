


javasci v1 limitations
======================

Why javasci v1 is now deprecated ?



Description
~~~~~~~~~~~

The version V1 of javasci has some important limitations:


+ To retrieve any variable from the Scilab language, knowing the type
  of the variable is mandatory a priori.
+ Only a few types are managed by the interface (boolean, double,
  complex and string).
+ Lack of consistency between Scilab and Java. For example, in Scilab,
  a scalar (matrix of [1,1]) is a matrix. In the Java interface, there
  are two different datatypes (example: SciDouble and SciDoubleArray).
+ There is no serialization possible on most of the datatype.
+ Calling a Scilab function can be done only with the Exec method and
  increases the complexity of the retrieval of multiple output
  arguments.
+ The package name does not follow the package naming rules of Scilab
  and the Scilab Java checkstyle.
+ Hard to manage graphics windows (this problem is not addressed yet
  in Javasci v2)
+ No interaction with the event loop (this problem is not addressed
  yet in Javasci v2)
+ Cannot manage several instances of Scilab (this problem is not
  addressed yet in Javasci v2)




See Also
~~~~~~~~


+ Browse `the documentation of Javasci v2.`_ (this will open the web
  browser).
+ `Compile and run with Javasci`_ How to compile a Java application
  using Javasci v2
+ `Javasci FAQ`_ The frequently asked questions for Javasci v2




History
~~~~~~~
Version Description 5.4.0 Javasci v1 is removed.
.. _Javasci FAQ: javasci_faq_v2.html
.. _Compile and run with Javasci: compile_and_run_javasci_v2.html
.. _the documentation of Javasci v2.: http://help.scilab.org/docs/5.4.0/javasci/javadoc/index.html


