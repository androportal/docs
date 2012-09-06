


if
==

keyword for conditional execution



Calling Sequence
~~~~~~~~~~~~~~~~


::

    if expr1 then
    statements
    elseif expri then
    statements
    ....
    else 
    statements
    end




Arguments
~~~~~~~~~

:expr1, expri logical expressions
: :statements blocks of valid statements.
:



Description
~~~~~~~~~~~

The `if` statement evaluates a logical expression and executes a group
of statements when the expression is true.

The `expri` are expressions with numeric or boolean values. If `expri`
is a nonscalar value then the condition is true only if all entries of
this value are true or different from zero.

The optional `elseif` and `else` provide for the execution of
alternate groups of statements. An `end` keyword, which matches the
`if`, terminates the last group of statements. The line structure of
`if` is not significant, the only constraint is that each `then`
keyword must be on the same line as its corresponding `if` or `elseif`
keyword.

The keyword `then` can be replaced by a carriage return or a comma.

According to the Code Conventions for the Scilab Programming Language
it is recommended:


+ Start each statement on a new line.
+ Write no more than one simple statement per line.
+ Break compound statements over multiple lines.


For example, use:


::

    if `rand`_(1,1) > 0.5 then
    `disp`_("True");
    else
    `disp`_("False");
    end


rather than


::

    if `rand`_(1,1) > 0.5 then `disp`_("True"); else `disp`_("False"); end


Warning: the number of characters used to define the body of any
conditional instruction (if while for or select/case) must be limited
to 16k.



Examples
~~~~~~~~


::

    i=2
    for j = 1:3, 
      if i == j then
        a(i,j) = 2; 
      elseif `abs`_(i-j) == 1 then 
        a(i,j) = -1; 
      else a(i,j) = 0;
      end,
    end




See Also
~~~~~~~~


+ `try`_ beginning of try block in try-catch control instruction
+ `while`_ while keyword
+ `select`_ select keyword
+ `boolean`_ Scilab Objects, boolean variables and operators & | ~
+ `end`_ end keyword
+ `then`_ keyword in control flows 'if' and 'select'
+ `else`_ keyword in if-then-else and select-case-then-else
+ `comparison`_ comparison, relational operators


.. _boolean: boolean.html
.. _then: then.html
.. _try: try.html
.. _else: else.html
.. _select: select.html
.. _end: end.html
.. _while: while.html
.. _comparison: comparison.html


