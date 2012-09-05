


isdef
=====

checks variable existence



Calling Sequence
~~~~~~~~~~~~~~~~


::

    isdef(name [,where])




Arguments
~~~~~~~~~

:name a character string
: :where an optional character string with default value `'all'`
:



Description
~~~~~~~~~~~

`isdef(name)` returns `%T` if the variable named `name` exists and
`%F` otherwise.

Caveats: a function which uses `isdef` may return a result which
depends on the environment!

`isdef(name,'local')` returns `%T` if the variable named `name` exists
in the local environment of the current function and `%F` otherwise.

`isdef(name,'nolocal')` returns `%T` if the variable named `name`
exists in the full calling environment (including the global level) of
the current function and `%F` otherwise.



Examples
~~~~~~~~


::

    A=1;
    isdef('A')
    clear A
    isdef('A')
    
    function level1()
      function level2()
        `disp`_(isdef("a","all"));
        `disp`_(isdef("a","local"));
        `disp`_(isdef("a","nolocal"));
      endfunction
      level2()
    endfunction
    function go()
      a=1;
      level1()
    endfunction
    go()




See Also
~~~~~~~~


+ `exists`_ checks variable existence
+ `isglobal`_ check if a variable is global
+ `whereis`_ name of library containing a function
+ `type`_ Returns the type of a variable
+ `typeof`_ object type
+ `clear`_ kills variables


.. _clear: clear.html
.. _type: type.html
.. _exists: exists.html
.. _whereis: whereis.html
.. _typeof: typeof.html
.. _isglobal: isglobal.html


