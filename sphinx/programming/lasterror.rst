Scilab Function

Last update : 16/11/2004

**lasterror** - get last recorded error message

Calling Sequence
~~~~~~~~~~~~~~~~

``str=lasterror( [opt] )  ``

``[str,n]=lasterror([opt])  ``

``[str,n,line,func]=lasterror([opt])  ``

Parameters
~~~~~~~~~~

-  ``           str         ``: vector of character strings or an empty
   matrix. The last recorded error message.
-  ``           n         ``: integer, 0 or the last recorded error
   number.
-  ``           line         ``: integer, 0 or the last recorded
   function line number.
-  ``           func         ``: string,the last recorded function name
-  ``           opt         ``: boolean, if %t recorded message is
   cleared. Default is %t.

Description
~~~~~~~~~~~

Each time an error occur, the Scilab error handler records it in
internal tables (only the last one is retained). The
``         lasterror       `` function allows to get the message, the
error number, the current function (if any) and the current line of the
current function out of these tables.

This function is useful while using ``         errcatch       `` or
``         execstr       ``.

The recorded error message may be retained for a further call to
``         lasterror       `` using ``         lasterror(%f)       ``.

Examples
~~~~~~~~

::


    ierr=execstr('a=zzzzzzz','errcatch')
    if ierr>0 then disp(lasterror()),end
     
      

See Also
~~~~~~~~

```           errcatch         `` <errcatch.htm>`_,
```           execstr         `` <execstr.htm>`_,
```           error         `` <error.htm>`_,
```           errclear         `` <errclear.htm>`_,
```           edit_error         `` <../utilities/edit_error.htm>`_,
