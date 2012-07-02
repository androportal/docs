Scilab Function

Last update : April 1993

**exists** - checks variable existence

Calling Sequence
~~~~~~~~~~~~~~~~

``exists(name [,where])  ``

Parameters
~~~~~~~~~~

-  ``           name         ``: a character string
-  ``           where         ``: an optional character string with
   default value ``           'all'         ``

Description
~~~~~~~~~~~

``         exists(name)       `` returns ``         1       `` if the
variable named ``         name       `` exists and ``         0       ``
otherwise.

Caveats: a function which uses ``         exists       `` may return a
result which depends on the environment!

``         exists(name,'local')       `` returns ``         1       ``
if the variable named ``         name       `` exists in the local
environment of the current function and ``         0       `` otherwise.

Examples
~~~~~~~~

::


    deff('foo(x)',..
    ['disp([exists(''a12''),exists(''a12'',''local'')])'
     'disp([exists(''x''),exists(''x'',''local'')])'])
    foo(1)
    a12=[];foo(1)
     
      

See Also
~~~~~~~~

```           isdef         `` <../elementary/isdef.htm>`_,
```           whereis         `` <whereis.htm>`_,
```           type         `` <type.htm>`_,
```           typeof         `` <../elementary/typeof.htm>`_,
```           macrovar         `` <../functions/macrovar.htm>`_,
