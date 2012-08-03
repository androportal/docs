====
"lex_sort"
====

Scilab Function Last update : April 1999
**lex_sort** - lexicographic matrix rows sorting



Calling Sequence
~~~~~~~~~~~~~~~~

[N, [k]]=lex_sort(M [,sel] [,'unique'])





Parameters
~~~~~~~~~~


+ **M** : real matrix
+ **N** : real matrix
+ **k** : column vector of integers




Description
~~~~~~~~~~~

**N=lex_sort(M)** sorts the rows (as a group) of the matrix **M** in
ascending order. If required the output argument **k** contains the
ordering: **[N,k]=lex_sort(M)** returns **k** such as **N** is uequal
to **M(k,:)** .

**N=lex_sort(M,sel [,'unique'])** produces the same result as the
following sequence of instructions:


::

    
    
    [N,k]=lex_sort(M(:,sel) [,'unique']);
    N=M(k,:)
       
        


The **'unique'** flag has to be given if one wants to retain only
unique rows in the result. Note that **lex_sort(M,sel,'unique')**
retains only rows such that M(:,sel) are unique.



Examples
~~~~~~~~


::

    
    
    M=round(2*rand(20,3));
    
    lex_sort(M)
    lex_sort(M,'unique')
    [N,k]=lex_sort(M,[1 3],'unique')
    
     
      




See Also
~~~~~~~~

` **sort** `_,

.. _
      : ://./elementary/sort.htm


