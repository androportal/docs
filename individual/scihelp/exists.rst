


exists
======

checks variable existence



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ve = exists(name [,where])




Arguments
~~~~~~~~~

:ve Output result with possible values: `1` if true, `0` if false
: :name a character string
: :where an optional character with possible values: `'l'` (local),
  `'n'` (nolocal) and `'a'` (all). The default value is `'a'`.
:



Description
~~~~~~~~~~~

`exists(name)` returns `1` if the variable named `name` exists and `0`
otherwise.

Caveats: a function which uses `exists` may return a result which
depends on the environment!

`exists(name,'l')` returns `1` if the variable named `name` exists in
the environment of the current function and `0` otherwise.

`exists(name,'n')` returns `1` if the variable named `name` exists in
any level of the calling environment (including the Scilab shell main
level) of the current function and `0` otherwise.

Warning: the `exists` function does not check if a variable exists in
the `global`_ namespace.



Examples
~~~~~~~~


::

    exists("myNotLikelyToExistVariable")
    myNotLikelyToExistVariable = 1;
    exists("myNotLikelyToExistVariable")



::

    `deff`_('foo(x)',..
    ['disp([exists(''a12''),exists(''a12'',''l'')])'
     'disp([exists(''x''),exists(''x'',''l'')])'])
    foo(1)
    a12=[];foo(1)
    
    function level1()
      function level2()
        `disp`_(exists("a","a"));
        `disp`_(exists("a","l"));
        `disp`_(exists("a","n"));
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


+ `isdef`_ checks variable existence
+ `isglobal`_ check if a variable is global
+ `whereis`_ name of library containing a function
+ `type`_ Returns the type of a variable
+ `typeof`_ object type
+ `macrovar`_ variables of function


.. _type: type.html
.. _isdef: isdef.html
.. _global: global.html
.. _whereis: whereis.html
.. _typeof: typeof.html
.. _macrovar: macrovar.html
.. _isglobal: isglobal.html


