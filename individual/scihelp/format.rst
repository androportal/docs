


format
======

number printing and display format



Calling Sequence
~~~~~~~~~~~~~~~~


::

    format([type],[long])
    v = format()
    format(m)




Arguments
~~~~~~~~~

:type character string
: :long integer (max number of digits (default 10))
: :v a vector for the current format. `v(1)` is a type of format : 0
  for 'e' and 1 for 'v' `v(2)` is a number of digits
: :m a vector to set new format m(1) is a number of digits m(2) is a
  type of format : 0 for 'e' and 1 for 'v'
:



Description
~~~~~~~~~~~

Sets the current printing format with the parameter `type`; it is one
of the following :

:"v" for a variable format (default)
: :"e" for the e-format.
:

`long` defines the max number of digits (default 10). `format()`
returns a vector for the current format: first component is the type
of format (1 if 'v' ; 0 if 'e'); second component is the number of
digits.

In the old Scilab versions, in "variable format" mode, vector entries
which are less than %eps times the maximum absolute value of the
entries were displayed as "0". It is no more the case, the clean
function can be used to set negligible entries to zeros.



Examples
~~~~~~~~


::

    x=`rand`_(1,5);
    format('v',10);x
    format(20);x
    format('e',10);x
    format(20);x
    
    x=[100 %eps];
    format('e',10);x
    format('v',10);x
    
    format("v")




See Also
~~~~~~~~


+ `write`_ write in a formatted file
+ `disp`_ displays variables
+ `print`_ prints variables in a file
+ `clean`_ cleans matrices (round to zero small entries)


.. _write: write.html
.. _clean: clean.html
.. _print: print.html
.. _disp: disp.html


