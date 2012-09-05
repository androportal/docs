


char
====

converts in a character array



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=char(x)
    y=char(st1,st2,st3,...)




Arguments
~~~~~~~~~

:x a cell array of strings, or an array of ascii codes
: :st1,st2,st3 arrays of strings
: :y a vector of strings (column)
:



Description
~~~~~~~~~~~

`One input argument :`

Given a cell of array of strings `x`, this function returns a vector
of strings `y` in which the rows are the concatenated components of
corresponding rows of the cell array of strings.

Given an array of ascii codes `x`, this function returns a array of
strings `y` corresponding into ascii codes. If dimensions of `x` are
`[n1,n2,n3,n4,...]`, then returned value has same size as input value
except second dimension, i.e. the dimensions of `y` are
`[n1,n3,n4,...]`.

`More than one input argument :`

Given arrays of strings `st1,st2,st3,...`, this function returns a
vector of strings in which the rows are the concatenated components of
corresponding rows of `st1,st2,st3,...`. In the vector `y` all strings
`sti` are completed by blanks to have the same length as the max
length of `sti`.



Examples
~~~~~~~~


::

    //Example with a hypermatrix of ascii codes :
    x=`hypermat`_([4,2,3],61:84);
    y=char(x)
    `size`_(x)
    `size`_(y)
    
    //Example with more than one argument :
    st1="zeros";
    st2=["one","two"];
    st3=["three"];
    y=char(st1,st2,st3)
    `size`_(y)
    
    //all strings rows are completed by 'blanks' to have the same length : 6
    `length`_(y)




See Also
~~~~~~~~


+ `ascii`_ string ascii conversions
+ `asciimat`_ string matrix ascii conversions


.. _ascii: ascii.html
.. _asciimat: asciimat.html


