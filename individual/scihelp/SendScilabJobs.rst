


SendScilabJobs
==============

Send Scilab tasks from a C/C++ code (call_scilab)


::

    int SendScilabJobs(char **jobs, int numberjobs);




Description
~~~~~~~~~~~

This fonction is provided in call_scilab. This function send many
tasks which will be proccessed by the Scilab engine.

Note that the ending ";" is not mandatory at the end of a command.



Arguments
~~~~~~~~~

:jobs an array of standard C char* containing the Scilab instructions
: :numberjobs The number of the Scilab instructions
: :returns 0 is all the operations are successful. -10 if . <0 and >
  -10 when an error occurred in the execution.
:



Examples
~~~~~~~~


::

    // A simple SendScilabJobs example
    
    `char`_* jobs[3];
    jobs[0]="a = 1";
    jobs[1]="b = 3";
    jobs[2]="c = a + b;";
    SendScilabJobs(jobs,3);
    SendScilabJob("disp(c);"); // Will display   4.




See Also
~~~~~~~~


+ `Call_Scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code
+ `api Scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `SendScilabJob`_ Send a Scilab task from a C/C++ code (call_scilab)
+ `Compile and run with call_scilab`_ How to compile a native
  application based on or using Scilab
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


