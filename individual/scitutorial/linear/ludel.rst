====
"ludel"
====

Scilab Function Last update : April 1993
**ludel** - utility function used with lufact



Calling Sequence
~~~~~~~~~~~~~~~~

ludel(hand)




Parameters
~~~~~~~~~~


+ **hand** : handle to sparse lu factors (output of lufact)




Description
~~~~~~~~~~~

This function is used in conjunction with **lufact** . It clears the
internal memory space used to store the result of **lufact** .

The sequence of commands **[p,r]=lufact(A);x=lusolve(p,b);ludel(p);**
solves the sparse linear system **A*x = b** and clears **p** .



See Also
~~~~~~~~

` **sparse** `_,` **lufact** `_,` **luget** `_,

.. _
      : ://./linear/../elementary/sparse.htm
.. _
      : ://./linear/luget.htm
.. _
      : ://./linear/lufact.htm


