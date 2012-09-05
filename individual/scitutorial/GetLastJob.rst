


GetLastJob
==========

Returns the latest job sent to Scilab engine


::

    BOOL GetLastJob(char *JOB,int nbcharsJOB);




Description
~~~~~~~~~~~

This fonction returns the latest job sent to Scilab engine with the
command SendScilabJob or SendScilabJobs. This can be used to display a
command which failed.

BOOL is just a simple typedef on int ( `typedef int BOOL` ). TRUE is
defined on 1 ( `#define TRUE 1`) and FALSE is defined on 0 ( `#define
FALSE 0`).



Arguments
~~~~~~~~~

:JOB a standard C char* which will be filled with the latest job
: :nbcharsJOB The number of char of JOB
: :returns 1 (TRUE) if the operation is successfull. 0 (FALSE) if an
  error during initialization occurred.
:



Examples
~~~~~~~~


::

    // A simple GetLastJob example
    // See SCI/modules/call_scilab/examples/basicExamples/GetLastJob.c for 
    // the full code
    `int`_ code=SendScilabJob("failedMyCurrentJob=%pi*3/0");
    if (code!=0){
     `char`_ lastjob[4096];
     if (GetLastJob(lastjob,4096))  {
      printf("Failed command: %s\n",lastjob);
     }
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


