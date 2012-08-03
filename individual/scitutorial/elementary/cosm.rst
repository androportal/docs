====
"cosm"
====

Scilab Function Last update : April 1993
**cosm** - matrix cosine function



Calling Sequence
~~~~~~~~~~~~~~~~

t=cosm(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex square matrix




Description
~~~~~~~~~~~

**cosm(x)** is the matrix cosine of the x matrix.
**t=0.5*(expm(%i*x)+expm(-%i*x))** .



Examples
~~~~~~~~


::

    
    
    A=[1,2;3,4]
    cosm(A)-0.5*(expm(%i*A)+expm(-%i*A))
     
      




See Also
~~~~~~~~

` **cos** `_,` **expm** `_,

.. _
      : ://./elementary/../linear/expm.htm
.. _
      : ://./elementary/cos.htm


