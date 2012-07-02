Scilab Function

Last update : August 2003

**continue** - keyword to pass control to the next iteration of a loop

Description
~~~~~~~~~~~

Inside a ``         for       `` or ``         while       `` loop, the
command ``         continue       `` passes control to the next
iteration of the loop in which it appears, skipping any remaining
statements between this instruction and the loop's
``         end       `` instruction.

Examples
~~~~~~~~

::


      for k=1:10,K=k;if k>2&k<=8 then continue,disp('hello'),end,k,end

      for j=1:2
        x=[];
        for k=1:10,if k>j+1&k<=8 then continue,end,x=[x,k];end
        x
      end
     
      

See Also
~~~~~~~~

```           while         `` <while.htm>`_,
```           for         `` <for.htm>`_,
```           break         `` <break.htm>`_,
```           return         `` <return.htm>`_,

Author
~~~~~~

Serge Steer, INRIA
