====
"trace"
====

Scilab Function Last update : April 1993
**trace** - trace



Calling Sequence
~~~~~~~~~~~~~~~~

trace(X)




Parameters
~~~~~~~~~~


+ **X** : real or complex square matrix, polynomial or rational
  matrix.




Description
~~~~~~~~~~~

**trace(X)** is the trace of the matrix **X** .

Same as **sum(diag(X))** .



Examples
~~~~~~~~


::

    
    
    A=rand(3,3);
    trace(A)-sum(spec(A))
     
      




See Also
~~~~~~~~

` **det** `_,

.. _
      : ://./linear/det.htm


