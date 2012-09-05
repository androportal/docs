


select
======

select keyword



Calling Sequence
~~~~~~~~~~~~~~~~


::

    select variable
    case value1 then
    instructions 1
    case value2 then
    instructions 2
    ...
    case valuen then
    instructions n
    [else instructions]
    end




Arguments
~~~~~~~~~

:variable variable which value to be analyzed.
: :value1, ..., valuen values of `variable` for which there are
  appropriate instruction blocks `instructions 1, ..., instructions n`.
: :instructions block of valid instructions.
:



Description
~~~~~~~~~~~

Notes:


+ The only constraint is that each `then` keyword must be on the same
  line line as corresponding `case` keyword (or use a continuation mark,
  see `dot`_).
+ The keyword `"then"` can be replaced by a carriage return or a
  comma. `instructions1` are executed if `expr1=expr`, etc.


According to the Code Conventions for the Scilab Programming Language
it is recommended:


+ Start each statement on a new line.
+ Write no more than one simple statement per line.
+ Break compound statements over multiple lines.


For example, use:


::

    A = 2
    select A
    case 1 then
        `disp`_(1)
    case 2 then
        `disp`_(2)
    else
        `disp`_(3)
    end


rather than


::

    A = 2;select A case 1 then `disp`_(1); case 2 then `disp`_(2); else  `disp`_(3); end


Warning: the number of characters used to define the body of any
conditional instruction (if while for or select/case) must be limited
to 16k.



Examples
~~~~~~~~


::

    while %t do
        n=`round`_(10*`rand`_(1,1))
        select n
            case 0 then 
            `disp`_(0)
        case 1 then
            `disp`_(1)
        else
            break
        end
    end




See Also
~~~~~~~~


+ `if`_ keyword for conditional execution
+ `while`_ while keyword
+ `for`_ language keyword for loops


.. _if: if.html
.. _dot: dot.html
.. _for: for.html
.. _while: while.html


