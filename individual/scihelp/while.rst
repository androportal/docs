


while
=====

while keyword



Description
~~~~~~~~~~~

The `while` clause must be terminated by `"end"`.

`while expr ,instructions,...[,else instructions], end`

`while expr do instructions,...[,else instructions], end`

`while expr then instructions,...[,else instructions], end`

Notes:


+ The only constraint is that each `then` or `do` keyword must be on
  the same line line as `while` keyword.
+ Keywords `then` or `do` can be replaced by a carriage return or a
  comma. For compatibility with Matlab it is also possible, but not
  recommended, to put a space between the end of the expression and the
  beginning of the first instruction.
+ The optional `,else instructions` construction allows to gives
  `instructions` which are executed when `expr` expression becomes
  false.


According to the Code Conventions for the Scilab Programming Language
it is recommended:


+ Start each statement on a new line.
+ Write no more than one simple statement per line.
+ Break compound statements over multiple lines.


For example, use:


::

    i = 0
    while i<5 
        `disp`_("i");
        i = i + 1; 
    end


rather than


::

    i = 0; while i<5 `disp`_("i"); i = i + 1; end


Warning: the number of characters used to define the body of any
conditionnal instruction (if while for or select/case) must be limited
to 16k.



Examples
~~~~~~~~


::

    e=1; a=1; k=1;
    while `norm`_(a-(a+e),1) > %eps, 
        e=e/2; 
        k=k+1; 
    end
    e,k




See Also
~~~~~~~~


+ `for`_ language keyword for loops
+ `select`_ select keyword
+ `break`_ keyword to interrupt loops
+ `return`_ return or resume execution and copy some local variables
+ `pause`_ pause mode, invoke keyboard


.. _for: for.html
.. _pause: pause.html
.. _select: select.html
.. _break: break.html
.. _return: return.html


