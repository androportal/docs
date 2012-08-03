====
"exp"
====

Scilab Function Last update : April 1993
**exp** - element-wise exponential



Calling Sequence
~~~~~~~~~~~~~~~~

exp(X)




Parameters
~~~~~~~~~~


+ **X** : scalar,vector or matrix with real or complex entries.




Description
~~~~~~~~~~~

**exp(X)** is the (element-wise) exponential of the entries of **X** .



Examples
~~~~~~~~


::

    
    
    x=[1,2,3+%i];
    log(exp(x))  //element-wise
    2^x
    exp(x*log(2))
    
     
      




See Also
~~~~~~~~

` **coff** `_,` **log** `_,` **expm** `_,

.. _
      : ://./linear/expm.htm
.. _
      : ://./linear/../elementary/log.htm
.. _
      : ://./linear/coff.htm


