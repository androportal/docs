


macr2lst
========

function to list conversion



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [txt]=macr2lst(function_name)




Description
~~~~~~~~~~~

This primitive converts a compiled Scilab function `function_name`
into a list which codes the internal representation of the function
(reverse Polish notation).

The first entry of the list is the function name, the second and third
are respectively the vectors of left hand side variables and right
hand side variables names. The following entries are either basic
operation records either lists with contains the hierarchical control
structures like `if`, `for`, ...

Basic operation records are described by a character string vector
whose first element represents the opcode.
op codes meaning parameters "0" ignored opcode none "1" No more used
"2" variable or function reference variable name, #rhs, #lhs "3" put a
string in the stack the string "4" put am empty matrix in the stack
none "5" apply an operation operation code, #rhs,#lhs "6" put a number
in the stack the number "12" pause command none "13" break command
none "14" abort command none "15" end of line mark none "17" quit
command none "18" named variable variable name "19" create recursive
index structure path length, number of final indices "20" function
call function name, #rhs, #lhs "23" create variable from name variable
name "24" put a variable with type 0 in the stack none "25" profile
record number of call, time spend "26" put a vector of strings in the
stack #rows, #columns, element sequence "27" put a builtin reference
in the stack interface number, position in interface, function name
"28" continue command none "29" assignment #lhs, display mode,
(variable name, #rhs)* "30" logical expression short circuit type,
jump size "31" comment the comment "99" return command none > "100"
builtin call (obsolete) 100*fun, #rhs, #lhs, fin
The `fun2string`_ function can be used to generate the initial code.



Examples
~~~~~~~~


::

    //DISPLAY
    function y=foo(x, flag)
      if flag then 
        y=`sin`_(x)
      else
        y=`cos`_(x)
      end
    endfunction
    L=macr2lst(foo)
    `fun2string`_(L)




See Also
~~~~~~~~


+ `macrovar`_ variables of function
+ `fun2string`_ generates ascii definition of a scilab function
+ `macr2tree`_ function to tree conversion
+ `tree2code`_ generates ascii definition of a Scilab function


.. _macrovar: macrovar.html
.. _tree2code: tree2code.html
.. _macr2tree: macr2tree.html
.. _fun2string: fun2string.html


