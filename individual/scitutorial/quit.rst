


quit
====

Terminates Scilab or decreases the pause level



Calling Sequence
~~~~~~~~~~~~~~~~


::

    quit




Description
~~~~~~~~~~~

The `quit` command has two different meanings depending on the calling
context:

:If there is no `pause` active, then the `quit` command makes Scilab
  terminate, even if the command is called inside a function.
: :If there is a `pause` active, then the `quit` command makes abort
  of the instructions started at this pause level and terminates the
  current pause level.
:



Examples
~~~~~~~~


::

    // quit Scilab
    function foo(x)
    if x then 
       quit
    end
    endfunction
    foo(%t) //quits scilab
    
    //terminate instruction started in a pause context
    function foo(x)
    if x then
       quit
    end
    endfunction
    pause
    foo(%t) //returns at the main prompt level
    
    function foo1(x)
    `mprintf`_('P1\n')
    if x then 
       pause
       `mprintf`_('P2\n')
    end
    `mprintf`_('P3\n')
    endfunction
         
    foo1(%t) //enter quit at the following prompt




See Also
~~~~~~~~


+ `pause`_ pause mode, invoke keyboard
+ `break`_ keyword to interrupt loops
+ `abort`_ interrupt evaluation.
+ `exit`_ Ends the current Scilab session
+ `resume`_ return or resume execution and copy some local variables


.. _break: break.html
.. _abort: abort.html
.. _pause: pause.html
.. _exit: exit.html
.. _resume: resume.html


