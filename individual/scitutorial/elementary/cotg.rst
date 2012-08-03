====
"cotg"
====

Scilab Function Last update : April 1993
**cotg** - cotangent



Calling Sequence
~~~~~~~~~~~~~~~~

[t]=cotg(x)




Parameters
~~~~~~~~~~


+ **x,t** : real or complex vectors/matrices




Description
~~~~~~~~~~~

The elements of **t** are the cotangents of the corresponding entries
of **x** . **t=cos(x)./sin(x)**



Examples
~~~~~~~~


::

    
    
    x=[1,%i];
    cotg(x)-cos(x)./sin(x)
     
      




See Also
~~~~~~~~

` **tan** `_,

.. _
      : ://./elementary/tan.htm


