


union
=====

extract union components of a vector



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [v [,ka, kb] ] = union(a,b)
    [v [,ka, kb] ] = union(a,b,orient)




Arguments
~~~~~~~~~

:a vector or matrix of numbers or strings
: :b vector of real numbers or strings
: :orient flag with possible values : 1 or "r", 2 or "c".
: :v row vector or matrix of numbers or strings
: :ka row vector of integers
: :kb row vector of integers
:



Description
~~~~~~~~~~~

`union(a,b)` returns a sorted row vector which retains the unique
entries of `[a(:);b(:)]`.

`union(a,b,"r")` or `union(a,b,1)`returns the matrix formed by the
union of the unique rows of `a` and `b` sorted in lexicographic
ascending order. In this case matrices `a` and `b` must have the same
number of columns.

`union(a,b,"c")` or `union(a,b,2)`returns the matrix formed by the
union of the unique columns of `a` and `b` sorted in lexicographic
ascending order. In this case matrices `a` and `b` must have the same
number of rows.

`[v,ka,kb]=union(a,b)` also returns index vectors `ka` and `kb` such
that `v` is a sorted combination of the entries `a(ka)` and `b(kb)`.



Examples
~~~~~~~~


::

    A=`round`_(5*`rand`_(10,1));
    B=`round`_(5*`rand`_(7,1));
    
    union(A,B)
    [N,ka,kb]=union(A,B)
    
    union('a'+`string`_(A),'b'+`string`_(B))




See Also
~~~~~~~~


+ `unique`_ extract unique components of a vector or matrices
+ `gsort`_ sorting by quick sort agorithm


.. _gsort: gsort.html
.. _unique: unique.html


