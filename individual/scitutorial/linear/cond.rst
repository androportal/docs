====
"cond"
====

Scilab Function Last update : April 1993
**cond** - condition number



Calling Sequence
~~~~~~~~~~~~~~~~

cond(X)




Parameters
~~~~~~~~~~


+ **X** : real or complex square matrix




Description
~~~~~~~~~~~

Condition number in 2-norm. **cond(X)** is the ratio of the largest
singular value of **X** to the smallest.



Examples
~~~~~~~~


::

    
    
    A=testmatrix('hilb',6);
    cond(A)
     
      




See Also
~~~~~~~~

` **rcond** `_,` **svd** `_,

.. _
      : ://./linear/svd.htm
.. _
      : ://./linear/rcond.htm


