====
"while"
====

Scilab Function Last update : April 1993
**while** - while keyword



Description
~~~~~~~~~~~

**while** clause. Must be terminated by **"end"**

**while expr ,instructions,...[,else instructions], end**

**while expr do instructions,...[,else instructions], end**

**while expr then instructions,...[,else instructions], end**

Notes:

**** The only constraint is that each "then" or "do" keyword must be
  on the same line line as "while" keyword.
**** The "keyword "then" or "do" can be replaced by a carriage return
  or a comma.
**** The optional **,else instructions** construction allows to gives
  instructions which are executed when expr expression becomes false.


Warning: the number of characters used to define the body of any
conditionnal instruction (if while for or select/case) must be limited
to 16k.



Examples
~~~~~~~~


::

    
    
    e=1; a=1; k=1;
    while norm(a-(a+e),1) > %eps, e=e/2; k=k+1; end
    e,k
     
      




See Also
~~~~~~~~

` **for** `_,` **select** `_,` **break** `_,` **return** `_,`
**pause** `_,

.. _
      : ://./programming/return.htm
.. _
      : ://./programming/select.htm
.. _
      : ://./programming/pause.htm
.. _
      : ://./programming/break.htm
.. _
      : ://./programming/for.htm


