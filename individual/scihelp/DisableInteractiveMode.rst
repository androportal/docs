


DisableInteractiveMode
======================

Disables some features (plotting, gui creation, Tcl/Tk...) and leaves
only the computing engine


::

    void DisableInteractiveMode(void);




Description
~~~~~~~~~~~

Calling this fonction will disable some features of Scilab.



Examples
~~~~~~~~


::

    // A simple DisableInteractiveMode example
     
    DisableInteractiveMode();
    `int`_ code=SendScilabJob("plot3d()"); /* This will failed since `plot3d`_ is
                                           among the disable features*/
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


