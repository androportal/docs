


continue
========

keyword to pass control to the next iteration of a loop



Description
~~~~~~~~~~~

Inside a `for` or `while` loop, the command `continue` passes control
to the next iteration of the loop in which it appears, skipping any
remaining statements between this instruction and the loop's `end`
instruction.



Examples
~~~~~~~~


::

    for k=1:10
        K=k;
        if k>2 & k<=8 then
           continue
           `disp`_('hello')
        end
        k
    end
     
    for j=1:2
      x=[];
      for k=1:10
        if k>j+1 & k<=8 then
          continue
        end
        x=[x,k];
      end
      x
    end




See Also
~~~~~~~~


+ `while`_ while keyword
+ `for`_ language keyword for loops
+ `break`_ keyword to interrupt loops
+ `return`_ return or resume execution and copy some local variables


.. _break: break.html
.. _for: for.html
.. _while: while.html
.. _return: return.html


