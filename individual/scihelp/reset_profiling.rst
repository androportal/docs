


reset_profiling
===============

Resets profiling counters of a function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    reset_profiling(funname)




Arguments
~~~~~~~~~

:funname A character string, the name of the function
:



Description
~~~~~~~~~~~

`reset_profiling(funname)` Resets profiling counters (if any) of the
function named `funname`.



Examples
~~~~~~~~


::

    function x=foo(a, n)
     x=0;
     for i=1:n
       if x<10 then
         x=x+a
       else
         x=x+1
       end  
     end
     x=x^2+1
    endfunction
    
    `add_profiling`_("foo")
    foo(0.1,100) //run the function
    `profile`_(foo) //extract profile information
    reset_profiling("foo")
    `profile`_(foo) //extract profile information




See Also
~~~~~~~~


+ `profile`_ extract execution profiles of a Scilab function
+ `plotprofile`_ extracts and displays execution profiles of a Scilab
  function
+ `add_profiling`_ Adds profiling instructions to a function.
+ `reset_profiling`_ Resets profiling counters of a function.
+ `remove_profiling`_ Removes profiling instructions toout of a
  function.




Used Functions
~~~~~~~~~~~~~~

This function uses the Scilab functions `bytecode` and `walkbytecode`

.. _plotprofile: plotprofile.html
.. _reset_profiling: reset_profiling.html
.. _profile: profile.html
.. _remove_profiling: remove_profiling.html
.. _add_profiling: add_profiling.html


