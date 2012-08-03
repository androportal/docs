====
"acosh"
====

Scilab Function Last update : April 1993
**acosh** - hyperbolic cosine inverse



Calling Sequence
~~~~~~~~~~~~~~~~

[t]=acosh(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector
+ **t** : real or complex vector




Description
~~~~~~~~~~~

the components of vector **t** are the ArgCosh of the corresponding
entries of vector **x** . Definition domain is ]1,+infinity[. It takes
his values in



Examples
~~~~~~~~


::

    
    
    x=[0,1,%i];
    cosh(acosh(x))
     
      




