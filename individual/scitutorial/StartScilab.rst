


StartScilab
===========

Initializes and starts Scilab engine in Call Scilab


::

    BOOL StartScilab(char *SCIpath, char *ScilabStartup, int Stacksize);




Description
~~~~~~~~~~~

This fonction starts the Scilab engine. This is mandatory to use
SendScilabJob functions and to manage Scilab's data.

BOOL is just a simple typedef on int ( `typedef int BOOL` ). TRUE is
defined on 1 ( `#define TRUE 1`) and FALSE is defined on 0 ( `#define
FALSE 0`).



Arguments
~~~~~~~~~

:SCIpath a standard C char* containing the path to Scilab data This
  argument is mandatory under Linux, Unix or Mac OS X. Under Windows, if
  SCIpath is NULL, Scilab will find the path.
: :ScilabStartup a standard C char* containing the path to Scilab
  startup script (scilab.start) If ScilabStartup is NULL, Scilab will
  use the default path (detected from SCIpath).
: :Stacksize a standard int defining the size of the Scilab stack If
  Stacksize is zero, Scilab will use the default stacksize of Scilab.
: :returns 1 (TRUE) if the operation is successfull. 0 (FALSE) if an
  error during initialization occurred.
:



Examples
~~~~~~~~


::

    // A simple StartScilab example
    if ( StartScilab(`getenv`_("SCI"), NULL, 0) == FALSE )
    {
    `fprintf`_(stderr,"Error while calling StartScilab\n");
    return -1;
    }




See Also
~~~~~~~~


+ `Call_Scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code
+ `api Scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `Compile and run with call_scilab`_ How to compile a native
  application based on or using Scilab
+ `SendScilabJob`_ Send a Scilab task from a C/C++ code (call_scilab)
+ `TerminateScilab`_ Stops and terminates Scilab engine in Call Scilab
+ `Double Management`_ How to manage Scilab's variable read and write
  process using call_scilab and api_scilab
+ `Boolean Management`_ How to manage Scilab's boolean read and write
  process using call_scilab and api_scilab
+ `Complex Management`_ How to manage Scilab's complex variable read
  and write process using call_scilab
+ `String Management`_ How to manage Scilab's String read and write
  process using call_scilab and api_scilab


.. _Double Management: DoubleManagement_callscilab.html
.. _Call_Scilab: call_scilab.html
.. _api Scilab: api_scilab.html
.. _Boolean Management: BooleanManagement_callscilab.html
.. _Compile and run with call_scilab: compile_and_run_call_scilab.html
.. _String Management: StringManagement_callscilab.html
.. _TerminateScilab: TerminateScilab.html
.. _SendScilabJob: SendScilabJob.html
.. _Complex Management: ComplexManagement_callscilab.html


