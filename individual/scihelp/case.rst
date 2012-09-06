


case
====

keyword used in statement "select"



Description
~~~~~~~~~~~

Keyword used in statement `select ... case ... end`

Keyword `case` points out one variant of a variable value (it is the
variable value which is selected from a range of values).

Use it in the following way:

::

    select expr0
        case expr1 then
            instructions 1
        case expr2 then
            instructions 2
          ...  
        case exprn then
            instructions n
        [else instructions]
    end





Examples
~~~~~~~~


::

    OS=`getos`_()
    select OS
    case "Windows" then
      `disp`_("Scilab on Windows")
    case "Linux" then
      `disp`_("Scilab on Linux")
    case "Darwin" then
      `disp`_("Scilab on MacOs")
    else
      `error`_("Scilab on Unknown platform")
    end




See Also
~~~~~~~~


+ `select`_ select keyword
+ `while`_ while keyword
+ `end`_ end keyword
+ `for`_ language keyword for loops


.. _end: end.html
.. _for: for.html
.. _while: while.html
.. _select: select.html


