


javasci
=======

Call Scilab engine from a Java application



Description
~~~~~~~~~~~

Scilab offers the possibility to be called from a Java application.

This help describes the features of the javasci API.

Since Scilab version 5.3.0, a new version of Javasci called Javasci v2
has been introduced. This version fixes most of the `limitations of
Javasci v1`_.

Browse `the documentation of Javasci v2.`_ (this will open the web
browser).



Example of Javasci v2
~~~~~~~~~~~~~~~~~~~~~


::

    // A simple Java example with javasci v2
    // Filename: DisplayPI.java
    
    import org.scilab.modules.javasci.Scilab;
    import org.scilab.modules.types.ScilabType;
    import org.scilab.modules.types.ScilabDouble;
    
    class Example1 {
    
        public static void main(String[] args) {
    
          try {
                Scilab sci = new Scilab();
                sci.open();
                sci.exec("disp(%pi);");
    
                ScilabDouble a = new ScilabDouble(3.14);
                sci.put("a",a);
                sci.exec("b=sin(a);");
                ScilabType b = sci.get("b");
                System.out.println("b = " + b);
    
                sci.close();
    
          } catch (org.scilab.modules.javasci.JavasciException e) {
                System.err.println("An exception occurred: " + e.getLocalizedMessage());
          }
    
        }
    }




See Also
~~~~~~~~


+ Browse `the documentation of Javasci v2.`_ (this will open the web
  browser).
+ `Compile and run with Javasci v2`_ How to compile a Java application
  using Javasci v2
+ `Javasci v2 FAQ`_ The frequently asked questions for Javasci v2




History
~~~~~~~
Version Description 5.4.0 Javasci v1 is removed. 5.4.0 New methods
added:

+ Scilab.execException(String) Same as Scilab.exec(String) but returns
  an exception when a Scilab error occurs
+ Scilab.execException(String[]) Same as Scilab.exec(String[]) but
  returns an exception when a Scilab error occurs
+ Scilab.execException(File) Same as Scilab.exec(File) but returns an
  exception when a Scilab error occurs

5.4.0

+ Javasci supports sparse and boolean sparse datatypes.
+ Javasci supports tlists, mlists and lists datatypes.
+ Javasci supports polynomial datatypes.
+ Javasci supports struct datatypes under the form of an mList.


.. _Javasci v2 FAQ: javasci_faq_v2.html
.. _Compile and run with Javasci v2: compile_and_run_javasci_v2.html
.. _the documentation of Javasci v2.: http://help.scilab.org/docs/5.4.0/javasci/javadoc/index.html
.. _limitations of Javasci v1: javasci_v1_limitations.html


