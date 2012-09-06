


intersect
=========

returns the vector of common values of two vectors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [v [,ka,kb]]=intersect(a,b)



::

    [v [,ka,kb]]=intersect(a,b,orient)




Arguments
~~~~~~~~~

:a vector of numbers or strings
: :b vector of numbers or strings
: :orient flag with possible values : 1 or "r", 2 or "c"
: :v row vector of numbers or strings
: :ka row vector of integers
: :kb row vector of integers
:



Description
~~~~~~~~~~~

`intersect(a,b)` returns a sorted row vector of common values of two
vectors of `a` and `b`.

`[v,ka,kb]=intersect(a,b)` also returns index vectors `ka` and `kb`
such that `v=a(ka)` and `v=b(kb)`.

`intersect(a,b,"r")` or `intersect(a,b,1)`returns the matrix formed by
the intersection of the unique rows of `a` and `b` sorted in
lexicographic ascending order. In this case matrices `a` and `b` must
have the same number of columns.

`[v,ka,kb]=intersect(a,b,"r")` also returns index vectors `ka` and
`kb` such that `v=a(ka,:)` and `v=b(kb,:)`.

`intersect(a,b,"c")` or `intersect(a,b,2)`returns the matrix formed by
the intersection of the unique columns of `a` and `b` sorted in
lexicographic ascending order. In this case matrices `a` and `b` must
have the same number of rows.

`[v,ka,kb]=intersect(a,b,"c")` also returns index vectors `ka` and
`kb` such that `v=a(:,ka)` and `v=b(:,kb)`.



Remark
~~~~~~

NaN are considered as different from themselves so they are excluded
out of intersection in case of vector intersection.



Examples
~~~~~~~~


::

    A=`round`_(5*`rand`_(10,1));
    B=`round`_(5*`rand`_(7,1));
    
    intersect(A,B)
    [N,ka,kb]=intersect(A,B)
    
    intersect('a'+`string`_(A),'a'+`string`_(B))
    
    intersect(`int16`_(A),`int16`_(B))
    
    //with matrices
     A = [0,0,1,1 1;
          0,1,1,1,1;
          2,0,1,1,1;
          0,2,2,2,2;
          2,0,1,1,1;
          0,0,1,1,%nan];
    B = [1,0,1;
         1,0,2;
         1,2,3;
         2,0,4;
         1,2,5;
         %nan,0,6];
    
    [v,ka,kb] = intersect(A,B,'c')
    A(:,ka)




See Also
~~~~~~~~


+ `unique`_ extract unique components of a vector or matrices
+ `gsort`_ sorting by quick sort agorithm
+ `union`_ extract union components of a vector


.. _gsort: gsort.html
.. _union: union.html
.. _unique: unique.html


