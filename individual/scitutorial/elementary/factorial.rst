====
"factorial"
====

Scilab Function Last update : 27/09/2006
**factorial** - returns factorial



Calling Sequence
~~~~~~~~~~~~~~~~

y=factorial(n)




Parameters
~~~~~~~~~~


+ **n** : a scalar, vector, matrix or hypermatrix of positives
  integers
+ **y** : a scalar, vector, matrix or hypermatrix




Description
~~~~~~~~~~~

This function returns the factorial n, if dimension of n is more than
**1** then it returns the element wise factorial ( **x** and **y**
have the same size).



Examples
~~~~~~~~


::

    // n scalar
    n=4
    y=factorial(n)
    // n matrix 
    n=[2 6 8;5 4 3]
    y=factorial(n)
    //n hypermatrix
    n=matrix(1:12,[2 2 3])
    y=factorial(n)
    
    
     
      




See Also
~~~~~~~~

,



