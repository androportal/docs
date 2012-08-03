====
"round"
====

Scilab Function Last update : April 1993
**round** - rounding



Calling Sequence
~~~~~~~~~~~~~~~~

y=round(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex matrix
+ **y** : integer or complex (with integer real and imag) matrix




Description
~~~~~~~~~~~

**round(x)** rounds the elements of **x** to the nearest integers.



Examples
~~~~~~~~


::

    
    
    round([1.9 -2.5])-[2,-3]
    round(1.6+2.1*%i)-(2+2*%i)
    round(-%inf)
    x=rand()*10^20;round(x)-x
     
      




See Also
~~~~~~~~

` **int** `_,` **floor** `_,` **ceil** `_,

.. _
      : ://./elementary/int.htm
.. _
      : ://./elementary/ceil.htm
.. _
      : ://./elementary/floor.htm


