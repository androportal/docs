====
"if"
====

Scilab Function Last update : 30/08/2005
**if** - conditional execution



Calling Sequence
~~~~~~~~~~~~~~~~

if expr1 then statements
elseif expri then statements
....
else statements
end




Description
~~~~~~~~~~~

The **if** statement evaluates a logical expression and executes a
group of statements when the expression is true.

The **expri** are expressions with numeric or boolean values. If
**expri** are matrix valued the condition is true only if all matrix
entries are true or different from zero.

The optional **elseif** and **else** provide for the execution of
alternate groups of statements. An **end** keyword, which matches the
**if** , terminates the last group of statements. The line structure
given above is not significant, the only constraint is that each
**then** keyword must be on the same line as its corresponding **if**
or **elseif** keyword.

The keyword **then** can be replaced by a carriage return or a comma.

Warning: the number of characters used to define the body of any
conditionnal instruction (if while for or select/case) must be limited
to 16k.



Examples
~~~~~~~~


::

    
    
       i=2
       for j = 1:3, 
          if i == j then
            a(i,j) = 2; 
          elseif abs(i-j) == 1 then 
            a(i,j) = -1; 
          else a(i,j) = 0;
          end,
       end
     
      




See Also
~~~~~~~~

` **try** `_,` **while** `_,` **select** `_,` **boolean** `_,` **end**
`_,` **then** `_,` **else** `_,

.. _
      : ://./programming/then.htm
.. _
      : ://./programming/try.htm
.. _
      : ://./programming/else.htm
.. _
      : ://./programming/while.htm
.. _
      : ://./programming/end.htm
.. _
      : ://./programming/boolean.htm
.. _
      : ://./programming/select.htm


