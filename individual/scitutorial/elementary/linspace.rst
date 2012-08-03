====
"linspace"
====

Scilab Function Last update : 18/04/2006
**linspace** - linearly spaced vector



Calling Sequence
~~~~~~~~~~~~~~~~

[v]=linspace(x1,x2 [,n])




Parameters
~~~~~~~~~~


+ **x1,x2** : real or complex scalars
+ **n** : integer (number of values) (default value = 100)
+ **v** : real or complex row vector




Description
~~~~~~~~~~~

Linearly spaced vector. **linspace(x1, x2)** generates a row vector of
n (default value=100) linearly equally spaced points between **x1**
and **x2** . if **x1** or **x2** are complex then **linspace(x1,x2)**
returns a row vector of n complexes, the real (resp. imaginary) parts
of the n complexes are linearly equally spaced between the real (resp.
imaginary) parst of **x1** and **x2 **



Examples
~~~~~~~~


::

    
    
    linspace(1,2,10)
    linspace(1+%i,2+2*%i,10)
     
      




See Also
~~~~~~~~

` **logspace** `_,

.. _
      : ://./elementary/logspace.htm


