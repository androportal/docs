


mode
====

select a mode in an exec-file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mode(k)
    k = mode()




Description
~~~~~~~~~~~

Used **exclusively** inside an exec-file or a Scilab function
`mode(k)` allows to change the information displayed during the
execution, depending on the value of `k`:

:k = 0 The new variable values are displayed if required (see help on
  `semicolon`_ or `comma`_).
: :k = -1 The exec-file or Scilab function executes silently (this is
  the default value for Scilab functions).
: :k = 2 It is the default value on Scilab prompt. Please notices that
  `mode(2)` does not used at prompt, only in an exec-file or a Scilab
  function.
: :k = 1 or k = 3 Each line of instructions is echoed preceded of the
  prompt (if possible). The new variable values are displayed if
  required. This is the default for exec-files.
: :k = 4 or k = 7 The new variable values are displayed if required,
  each line of instructions is echoed (if possible) and a prompt (>>) is
  issued after each line waiting for a carriage return. If the carriage
  return follows character "p" the execution is paused (see `pause`_).
: :k > 7 User mode. If you define your own mode, it is recommended to
  use a value > 100.
:

Line display is disabled for compiled Scilab function (see `comp`_).
By default, Scilab functions are executed using the silent ("-1")
mode.

Functions in a function library are executed using "-1" mode.



Examples
~~~~~~~~


::

    // copy - paste in Scilab
    
    function example_mode(level_mode)
     mode(level_mode)
     a = 3
     `disp`_(mode());
    endfunction
    
    mode(2)
    
    example_mode(0)
    example_mode(-1)
    example_mode(2)
    example_mode(1)
    example_mode(3)
    example_mode(7)
    
    mode(2)




See Also
~~~~~~~~


+ `exec`_ script file execution
+ `execstr`_ execute Scilab code in strings
+ `semicolon`_ (;) ending expression and row separator
+ `comma`_ (,) comma; instruction, argument separator
+ `comp`_ scilab function compilation


.. _exec: exec.html
.. _semicolon: semicolon.html
.. _execstr: execstr.html
.. _pause: pause.html
.. _comp: comp.html
.. _comma: comma.html


