


SendScilabJob
=============

Send a Scilab task from a C/C++ code (call_scilab)


::

    int SendScilabJob(char *job);




Description
~~~~~~~~~~~

This fonction is provided in call_scilab. This function send a task
which will be proccessed by the Scilab engine.



Arguments
~~~~~~~~~

:job a standard C char* containing the Scilab instructions
: :returns 0 is the operation is successfull. -1 if Call Scilab has
  not been able to write the job into Scilab. -2 or -3 if Call Scilab
  has not been able to read the error code from Scilab. -4 if Call
  Scilab has not been able to allocate the job.
:



Examples
~~~~~~~~


::

    // A simple SendScilabJob example
    
    if (SendScilabJob("disp('unfinished quote)")!=0){ // This will fail
     printf("An error occurred\n");
    }
    SendScilabJob("myMatrix=['`sample`_','for the help']");




See Also
~~~~~~~~


+ `Call_Scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code
+ `api Scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `Compile and run with call_scilab`_ How to compile a native
  application based on or using Scilab
+ `SendScilabJob`_ Send a Scilab task from a C/C++ code (call_scilab)
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
.. _Complex Management: ComplexManagement_callscilab.html
.. _SendScilabJob: SendScilabJob.html


