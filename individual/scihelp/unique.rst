


unique
======

extract unique components of a vector or matrices



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [N [,k]]=unique(M)
    [N [,k]]=unique(M ,orient)




Arguments
~~~~~~~~~

:M vector or matrix of numbers or strings
: :orient flag with possible values : 1 or "r", 2 or "c"
: :N vector or matrix of numbers or strings
: :k vector of integers
:



Description
~~~~~~~~~~~

`unique(M)` returns a vector which retains the unique entries of `M`
in ascending order.

`unique(M,"r")` or `unique(M,1)`returns the unique rows of `M` in
lexicographic ascending order.

`unique(M,"c")` or `unique(M,2)`returns the unique columns of `M` in
lexicographic ascending order.

If required the output argument `k` contains the position of the first
encountered unique entries.



Examples
~~~~~~~~


::

    M=`round`_(2*`rand`_(20,1));
    
    unique(M)
    [N,k]=unique(M)
    
    unique(`string`_(M))
    [N,k]=unique(`string`_(M))
    
    A = [0,0,1,1;
         0,1,1,1;
         2,0,1,1;
         0,2,2,2;
         2,0,1,1;
         0,0,1,1];
    T='x'+`string`_(A);
    
    //unique rows
    
    [m,k]=unique(A,'r')
    unique(T,'r')
    
    //unique columns
    [m,k]=unique(T,'c')
    unique(A,'c')




See Also
~~~~~~~~


+ `union`_ extract union components of a vector
+ `intersect`_ returns the vector of common values of two vectors
+ `gsort`_ sorting by quick sort agorithm
+ `lex_sort`_ lexicographic matrix rows sorting


.. _gsort: gsort.html
.. _union: union.html
.. _lex_sort: lex_sort.html
.. _intersect: intersect.html


