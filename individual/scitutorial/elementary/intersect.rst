====
"intersect"
====

Scilab Function Last update : April 1999
**intersect** - returns the vector of common values of two vectors



Calling Sequence
~~~~~~~~~~~~~~~~

[v, [ka,kb]]=intersect(a,b)





Parameters
~~~~~~~~~~


+ **a** : vector of real numbers or strings
+ **b** : vector of real numbers or strings
+ **v** : row vector of real numbers or strings
+ **ka** : row vector of integers
+ **kb** : row vector of integers




Description
~~~~~~~~~~~

**intersect(a,b)** returns a sorted row vector of common values of two
vectors of **a** and **b** .

**[v,ka,kb]=intersect(a,b)** also returns index vectors **ka** and
**kb** such that **v=a(ka)** and **v=b(kb)** .



Examples
~~~~~~~~


::

    
    
    A=round(5*rand(10,1));
    B=round(5*rand(7,1));
    
    intersect(A,B)
    [N,ka,kb]=intersect(A,B)
    
    intersect('a'+string(A),'a'+string(B))
    
     
      




See Also
~~~~~~~~

` **unique** `_,` **sort** `_,` **union** `_,

.. _
      : ://./elementary/unique.htm
.. _
      : ://./elementary/sort.htm
.. _
      : ://./elementary/union.htm


