====
"unique"
====

Scilab Function Last update : April 1999
**unique** - extract unique components of a vector



Calling Sequence
~~~~~~~~~~~~~~~~

[N, [k]]=unique(M)





Parameters
~~~~~~~~~~


+ **M** : vector of real numbers or strings
+ **N** : vector of real numbers or strings
+ **k** : vector of integers




Description
~~~~~~~~~~~

**unique(M)** returns a vector which retains the unique entries of
**M** in ascending order.

If required the output argument **k** contains the position of the
first encountered unique entries.



Examples
~~~~~~~~


::

    
    
    M=round(2*rand(20,1));
    
    unique(M)
    [N,k]=unique(M)
    
    unique(string(M))
    [N,k]=unique(string(M))
    
     
      




See Also
~~~~~~~~

` **union** `_,` **sort** `_,` **lex_sort** `_,

.. _
      : ://./elementary/lex_sort.htm
.. _
      : ://./elementary/union.htm
.. _
      : ://./elementary/sort.htm


