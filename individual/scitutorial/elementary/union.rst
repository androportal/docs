====
"union"
====

Scilab Function Last update : April 1999
**union** - extract union components of a vector



Calling Sequence
~~~~~~~~~~~~~~~~

[v, [ka,kb]]=union(a,b)





Parameters
~~~~~~~~~~


+ **a** : vector of real numbers or strings
+ **b** : vector of real numbers or strings
+ **v** : row vector of real numbers or strings
+ **ka** : row vector of integers
+ **kb** : row vector of integers




Description
~~~~~~~~~~~

**union(a,b)** returns a sorted row vector which retains the unique
entries of **[a(:);b(:)]** .

**[v,ka,kb]=union(a,b)** also returns index vectors **ka** and **kb**
such that **v** is a sorted combination of the entries **a(ka)** and
**b(kb)** .



Examples
~~~~~~~~


::

    
    
    A=round(5*rand(10,1));
    B=round(5*rand(7,1));
    
    union(A,B)
    [N,ka,kb]=union(A,B)
    
    union('a'+string(A),'b'+string(B))
    
     
      




See Also
~~~~~~~~

` **unique** `_,` **sort** `_,

.. _
      : ://./elementary/unique.htm
.. _
      : ://./elementary/sort.htm


