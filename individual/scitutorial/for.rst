


for
===

language keyword for loops



Description
~~~~~~~~~~~

Used to define loops. Its syntax is: `for variable=expression
,instruction, .. ,instruction,end`

`for variable=expression do instruction, ,instruction,end`

If `expression` is a matrix or a row vector, `variable` takes as
values the values of each column of the matrix.

A particular case uses the `colon`_ operator to create regularly
spaced row vectors, and is similar to traditional for loop forms: `for
variable=n1:step:n2, ...,end`

If `expression` is a list `variable` takes as values the successive
entries of the list.

According to the Code Conventions for the Scilab Programming Language
it is recommended:


+ Start each statement on a new line.
+ Write no more than one simple statement per line.
+ Break compound statements over multiple lines.


For example, use:


::

    for i = 1:5 
        `disp`_(i);
    end


rather than


::

    for i = 1:5 `disp`_(i); end


Warning: the number of characters used to define the body of any
conditional instruction (if while for or select/case) must be limited
to 16k.



Examples
~~~~~~~~


::

    // "traditional" for loops
    n=5;
    for i = 1:n
        for j = 1:n
            a(i,j) = 1/(i+j-1);
        end;
    end
    for j = 2:n-1
        a(j,j) = j; 
    end; 
    a
    for j= 4:-1:1
        `disp`_(j);
    end // decreasing loop
    
    //loop on matrix columns
    for  e=`eye`_(3,3), e, end  
    for v=a, `write`_(6,v), end
    for j=1:n, v=a(:,j), `write`_(6,v), end 
    
    //loop on list entries
    for l=`list`_(1,2,'example'); l, end




See Also
~~~~~~~~


+ `while`_ while keyword
+ `end`_ end keyword
+ `do`_ language keyword for loops


.. _colon: colon.html
.. _do: do.html
.. _end: end.html
.. _while: while.html


