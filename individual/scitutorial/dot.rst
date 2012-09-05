


dot
===

(.) symbol



Calling Sequence
~~~~~~~~~~~~~~~~


::

    123.33
    a.*b
    
    [123,..
    456]




Description
~~~~~~~~~~~

:. Dot is used to mark decimal point for numbers : 3.25 and 0.001
: :.<op> used in conjunction with other operator symbols ( `*/ \ ^ '`)
  to form other operators. Element-by-element multiplicative operations
  are obtained using `.* , .^ , ./ , .\` or `.'`. For example, `C = A ./
  B` is the matrix with elements `c(i,j) = a(i,j)/b(i,j)`. Kronecker
  product is noted `.*.` . Note that when dot follows a number it is
  always a part of the number so `2.*x` is evaluated as `2.0*x` and `2
  .*x` is evaluated as `(2).*x`.
: :.. Continuation mark. Two or more dots at the end of a line (or
followed by a comment) causes the following line to be a continuation.
Continuation lines are handled by a preprocessor which builds a long
logical line from a sequence of continuation lines. So the
continuation marks can be used to cut a line at any point. The
following function `foo`:

::

    function 
      a=1
      `disp`_(a),..
      `disp`_('ok')
    endfunction

is equivalent to:

::

    function 
      a=1
    
      `disp`_(a),`disp`_('ok') 
    endfunction

The logical line formed by physical line 3 and physical line 4 is
  built as if it was entirely written in the physical line 4 while
  physical line 3 would be empty. This is done this way because
  continuation marks can be put anywhere even inside an expression.
:



Examples
~~~~~~~~


::

    //decimal point
    1.345
    
    //used as part of an operator
    x=[1 2 3];x.^2 .*x // a space is required between 2 and dot
    
    // used to enter continuation lines
    T=[123,..//first element
       456] //second one
    
    a="here I start a very long string...  //but I'm not in the mood of continuing
         - and here I go on"
    y=12..
    45




See Also
~~~~~~~~


+ `star`_ (*) multiplication operator
+ `hat`_ (^) exponentiation
+ `slash`_ (/) right division and feed back
+ `backslash`_ (\) left matrix division.


.. _hat: hat.html
.. _star: star.html
.. _slash: slash.html
.. _backslash: backslash.html


