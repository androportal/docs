


add_profiling
=============

Adds profiling instructions to a function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    add_profiling(funname)




Arguments
~~~~~~~~~

:funname A character string, the name of the function
:



Description
~~~~~~~~~~~

`add_profiling(funname)` Adds profiling instructions to the function
named `funname`. Then when this function is run the number of calls,
the time spent is stored for each function line.



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
    
    add_profiling("foo")
    foo(0.1,100) //run the function
    `profile`_(foo) //extract profile information




See Also
~~~~~~~~


+ `profile`_ extract execution profiles of a Scilab function
+ `plotprofile`_ extracts and displays execution profiles of a Scilab
  function
+ `remove_profiling`_ Removes profiling instructions toout of a
  function.
+ `reset_profiling`_ Resets profiling counters of a function.




Used Functions
~~~~~~~~~~~~~~

This function uses the Scilab functions `bytecode` and `walkbytecode`

.. _profile: profile.html
.. _reset_profiling: reset_profiling.html
.. _plotprofile: plotprofile.html
.. _remove_profiling: remove_profiling.html


