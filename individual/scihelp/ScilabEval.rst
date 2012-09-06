


ScilabEval
==========

tcl instruction : Evaluate a string with scilab interpreter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ScilabEval instruction
    ScilabEval instruction "seq"
    ScilabEval instruction "sync"
    ScilabEval instruction "sync" "seq"
    ScilabEval "flush"




Arguments
~~~~~~~~~

:instruction tcl string character contains a Scilab instruction to
  evaluate with the current Scilab interpreter.
:



Description
~~~~~~~~~~~

This function must be called in a tcl/tk script executed from Scilab.
It allows to associate Scilab actions to tcl/tk widgets (graphic
objects) or to use Scilab to perform some computations within a tcl
script.



:ScilabEval instruction If the `ScilabEval instruction` syntax is
  used, the `instruction` is first stored in a FIFO queue, `ScilabEval`
  returns immediately. Scilab executes the queued `instructions` when
  possible (it should be at the prompt but also at the end of each
  instructions of the currently running function) in the order they were
  submitted. This syntax can be used to associate Scilab actions to
  tcl/tk widgets but not into a tcl script executed by `TCL_EvalFile`_
  or `TCL_EvalStr`_ because in this situation the Scilab interpreter is
  blocked up to the end of the script. Note that with the `ScilabEval
  instruction` syntax, if there are many `ScilabEval` commands stored in
  the queue the execution of the second one can be started in the middle
  of the execution of the first one (in particular if the first one
  contains more than a simple expression). If the `"seq"` option is
  added, the associated instruction evaluation should be finished (or
  paused) before the next queued instruction evaluation can be started.
  The next callback stored in the command queue will only be taken into
  account when the current one will be finished or paused.
: :ScilabEval instruction "sync" If the `ScilabEval instruction
  "sync"` syntax is used, the instruction is executed immediately (not
  queued) and the `ScilabEval`returns when the `instruction` evaluation
  is finished. The scilab `instruction` evaluation may be interrupted by
  new or queued commands. If the `"seq"` option is added, the associated
  instruction evaluation should be finished (or paused) before any
  queued instruction evaluation can be started. The scilab `instruction`
  evaluation may not be interrupted by new or queued commands (except if
  it is paused).
: :ScilabEval "flush" If the `ScilabEval "flush"` syntax is used, all
  the previously queued `instructions` are executed immediately and the
  ScilabEval returns when the execution is finished. Each `instruction`
  is executed with the option used at the time of queuing up (i.e. `seq`
  or no option).
:

The evaluation context of all these cases is the current Scilab
context when the `instruction` evaluation starts.

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    //Callbacks and "seq" option usage
    
    //create tcl instructions
    tcl_script=['toplevel .w1'
                'button .w1.b -text ""Click here to execute without seq option""  -command WithoutSeq'
                'button .w1.b1 -text ""Click here to execute with seq option""  -command  WithSeq'
                'pack .w1.b .w1.b1'
                'proc  WithoutSeq {} { ';
                '  ScilabEval ""cont=%f;;cont=%t;"" '
                '  ScilabEval ""if cont then disp(''ok''),else disp(''wrong'');end;cont=%f;"" '
                '}'
                'proc WithSeq {} { ';
                '  ScilabEval ""cont=%f;;cont=%t;""  ""seq""'
                '  ScilabEval ""if cont then disp(''ok''),else disp(''wrong'');end;cont=%f;"" '
                '}'];
    `mputl`_(tcl_script,TMPDIR+'/test.tcl') //write them to a file
    
    // Execute the tcl script
    cont=%f;
    `TCL_EvalFile`_(TMPDIR+'/test.tcl');;
    
    //scripts and "sync" option usage
    
    //----------------without "sync"----------------
    tcl_script=['  set t ""0""'
                '  while {$t != ""10""} {'
                '     ScilabEval ""a=$t;mprintf(''%d '',a);""'
                '     incr t'
                '  }'];
    
    `mputl`_(tcl_script,TMPDIR+'/test.tcl') //write them to a file
    
    // Execute the tcl script
    `TCL_EvalFile`_(TMPDIR+'/test.tcl');`mprintf`_('TCL_EvalFile finished\n');
    
    // The ScilabEval are executed  after the and of TCL_EvalFile
    
    //----------------with "sync"----------------
    tcl_script=['  set t ""0""'
                '  while {$t != ""10""} {'
                '     ScilabEval ""a=$t;mprintf(''%d '',a);"" ""sync""'
                '     incr t'
                '  }'];
    
    `mputl`_(tcl_script,TMPDIR+'/test.tcl') //write them to a file
    
    // Execute the tcl script
    `TCL_EvalFile`_(TMPDIR+'/test.tcl');`mprintf`_('TCL_EvalFile finished\n');
    
    // The ScilabEval are executed  synchronously with TCL_EvalFile




See Also
~~~~~~~~


+ `TCL_EvalFile`_ Reads and evaluate a tcl/tk file
+ `TCL_EvalStr`_ Evaluate a string whithin the Tcl/Tk interpreter
+ `TCL_GetVar`_ Get a tcl/tk variable value
+ `TCL_SetVar`_ Set a tcl/tk variable value


.. _TCL_SetVar: TCL_SetVar.html
.. _TCL_EvalFile: TCL_EvalFile.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_GetVar: TCL_GetVar.html
.. _TCL_EvalStr: TCL_EvalStr.html


