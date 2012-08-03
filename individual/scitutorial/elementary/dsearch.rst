====
"dsearch"
====

Scilab Function Last update : 11/03/2005
**dsearch** - binary search (aka dichotomous search in french)



Calling Sequence
~~~~~~~~~~~~~~~~

[ind, occ, info] = dsearch(X, val [, ch ])




Parameters
~~~~~~~~~~


+ **X** : a real vector or matrix
+ **val** : a real (row or column) vector with n components in
  strictly increasing order val(1) < val(2) < ... < val(n)
+ **ch** : (optional) a character "c" or "d" (default value "c")
+ **ind** : a real vector or matrix with the same dimensions than X
+ **occ** : a real vector with the same format than val (but with n-1
  components in the case ch="c")
+ **info** : integer




Description
~~~~~~~~~~~

This function is useful to search in an ordered table and/or to count
the number of components of a vector falling in some classes (a class
being an interval or a value).

By default or when **ch="c"** , this is the interval case, that is,
for each X(i) search in which of the n-1 intervals it falls, the
intervals being defined by:


::

    
                I1 = [val(1), val(2)]
                Ik = (val(k), val(k+1)] for 1 < k <= n-1 ; 


and:

