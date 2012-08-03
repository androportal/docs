====
"ndims"
====

Scilab Function Last update : 2001
**ndims** - number of dimensions of an array



Parameters
~~~~~~~~~~


+ **A** : an array
+ **n** : integer, the number of dimensions of the array




Description
~~~~~~~~~~~

**n=ndims(A)** return the number of dimension of the array **A** .
**n** is greater than or equal to 2.



Examples
~~~~~~~~


::

    
    
    A=rand(2,3);
    ndims(A)
    
    A=rand(2,3,2);
    size(A),ndims(A)
    
    H=[1/%s,1/(%s+1)]
    ndims(H)
     
      




See Also
~~~~~~~~

` **size** `_,



Author
~~~~~~

S. Steer

.. _
      : ://./elementary/size.htm


