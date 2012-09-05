


equal
=====

(=) assignment , comparison, equal sign



Description
~~~~~~~~~~~

:Assignment: The equal sign `=` is used to denote the assignment of
value(s) to variable(s). The syntax can be :

    + `a=expr` where `a` is a variable name and `expr` a scilab expression
      which evaluates to a single result;
    + `[a,b,...]=expr` where `a`, `b`, `...` are variable names and `expr`
      a scilab expression which results in as many results as given variable
      names.

: :Comparison: The equal sign `=` is also used in the comparison
operators:

    + `a==b` denotes equality comparison between the values of the
      expressions `a` and `b`;
    + `a~=b` denotes inequality comparison between the values of the
      expressions `a` and `b`;
    + `a<=b` and `a>=b` denote ordering comparison between the values of
      the expressions `a` and `b`.
See `comparison`_ for semantic details.
:



Examples
~~~~~~~~


::

    a = `sin`_(3.2)
    M = [2.1,3.3,8.5;7.6,6.7,6.9;0,6.3,8.8];
    [u,s] = `schur`_(M)
    [1:10] == 4 
    1~=2




See Also
~~~~~~~~


+ `less`_ (<) less than comparison
+ `greater`_
+ `boolean`_ Scilab Objects, boolean variables and operators & | ~
+ `isequal`_ objects comparison
+ `comparison`_ comparison, relational operators


.. _less: less.html
.. _isequal: isequal.html
.. _boolean: boolean.html
.. _greater: less.html#greater
.. _comparison: comparison.html


