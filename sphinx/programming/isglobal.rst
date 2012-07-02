Scilab Function

Last update : April 1999

**isglobal** - check if a variable is global

Calling Sequence
~~~~~~~~~~~~~~~~

``t=isglobal(x)  ``

Parameters
~~~~~~~~~~

-  ``           x         ``: any variable
-  ``           t         ``: a boolean

Description
~~~~~~~~~~~

``         isglobal(x)       `` returns true if x has been declared to
be a global variable and false otherwise.

Examples
~~~~~~~~

::


    isglobal(1)
    global a
    isglobal(a)
     
      

See Also
~~~~~~~~

```           global         `` <global.htm>`_,
```           clearglobal         `` <clearglobal.htm>`_,
```           who         `` <who.htm>`_,
