====
"qassign"
====

Scilab function Last update : September 1996
**qassign** - solves a quadratic assignment problem



Calling Sequence
~~~~~~~~~~~~~~~~

[crit,order] = qassign(c,f,d)




Parameters
~~~~~~~~~~


+ **c** : real matrix
+ **f** : real matrix
+ **d** : real matrix
+ **crit** : real scalar
+ **order** : integer row vector




Description
~~~~~~~~~~~

**qassign** solves the quadratic assignment problem i.e. minimize the
global criterium: ** crit = e(1)+...+e(n) ** where ** e(i) =
c(i,l(i))+ fd(i) ** where ** fd(i) =
f(i,1)*d(l(i),l(1))+...+f(i,n)*d(l(i),l(n)) **

**c** , **f** and **d** are n x n real arrays; their diagonal entries
are zero.



Examples
~~~~~~~~


::

    
    
    n=15;
    d=100*rand(15,15);
    d=d-diag(diag(d));
    c=zeros(n,n);f=c;
    f(2:n,1)=ones(1:n-1)';
    [crit,order]=qassign(c,f,d)
     
      




See Also
~~~~~~~~

` **knapsack** `_,

.. _
      : ://./metanet/knapsack.htm


