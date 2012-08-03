====
"setdiff"
====

Scilab Function Last update : April 1999
**setdiff** - returns components of a vector which do not belong to
another one



Calling Sequence
~~~~~~~~~~~~~~~~

v=setdiff(a,b)
[v,ka]=setdiff(a,b)





Parameters
~~~~~~~~~~


+ **a** : vector of real numbers or strings
+ **b** : vector of real numbers or strings
+ **v** : vector of real numbers or strings with same orientation than
  **a**
+ **ka** : row vector of integers, ka(i) is the location of v(i) in a




Description
~~~~~~~~~~~

**setdiff(a,b)** returns a sorted vector which retains the **a**
entries which are not in **b**

**[v,ka]=setdiff(a,b)** returns a sorted vector which retains the
**a** entries which are not in **b** and the location of these entries
in a.



Examples
~~~~~~~~


::

    
    
     a = [223;111;2;4;2;2];
     b = [2;3;21;223;123;22];
     setdiff(a,b)
     [v,k]=setdiff(string(a),string(b))
     
      




See Also
~~~~~~~~

` **unique** `_,` **sort** `_,` **union** `_,

.. _
      : ://./elementary/unique.htm
.. _
      : ://./elementary/sort.htm
.. _
      : ://./elementary/union.htm


