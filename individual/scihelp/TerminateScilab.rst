


TerminateScilab
===============

Stops and terminates Scilab engine in Call Scilab


::

    BOOL TerminateScilab(char *ScilabQuit);




Description
~~~~~~~~~~~

This fonction stops the Scilab engine. It is strongly recommended to
call this function at the end when using Call Scilab .

BOOL is just a simple typedef on int ( `typedef int BOOL` ). TRUE is
defined on 1 ( `#define TRUE 1`) and FALSE is defined on 0 ( `#define
FALSE 0`).



Arguments
~~~~~~~~~

:ScilabQuit a standard C char* containing the path to Scilab quit
  script (scilab.quit) If ScilabStartup is NULL, Scilab will use the
  default path (detected from SCIpath).
: :returns 1 (TRUE) if the operation is successfull. 0 (FALSE) if an
  error during initialization occurred.
:



Examples
~~~~~~~~


::

    // A simple TerminateScilab example
    if ( TerminateScilab(NULL) == FALSE ) {
     `fprintf`_(stderr,"Error while calling TerminateScilab\n");
     return -2;
    }




See Also
~~~~~~~~


+ `Call_Scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code
+ `api Scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `Compile and run with call_scilab`_ How to compile a native
  application based on or using Scilab
+ `StartScilab`_ Initializes and starts Scilab engine in Call Scilab
+ `SendScilabJob`_ Send a Scilab task from a C/C++ code (call_scilab)
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
.. _Call_Scilab: call_scilab.html
.. _api Scilab: api_scilab.html
.. _Boolean Management: BooleanManagement_callscilab.html
.. _Compile and run with call_scilab: compile_and_run_call_scilab.html
.. _String Management: StringManagement_callscilab.html
.. _Complex Management: ComplexManagement_callscilab.html
.. _SendScilabJob: SendScilabJob.html


