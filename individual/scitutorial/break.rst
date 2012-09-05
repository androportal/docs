


break
=====

keyword to interrupt loops



Description
~~~~~~~~~~~

Inside a `for` or `while` loop, the command `break` forces the end of
the loop.



Examples
~~~~~~~~


::

    k=0; 
    while 1==1, 
          k=k+1;
          if k > 100 then  
             break
          end; 
    end




See Also
~~~~~~~~


+ `while`_ while keyword
+ `if`_ keyword for conditional execution
+ `for`_ language keyword for loops
+ `abort`_ interrupt evaluation.
+ `return`_ return or resume execution and copy some local variables


.. _for: for.html
.. _abort: abort.html
.. _while: while.html
.. _return: return.html
.. _if: if.html


