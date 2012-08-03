====
"acos"
====

Scilab Function Last update : April 1993
**acos** - element wise cosine inverse



Calling Sequence
~~~~~~~~~~~~~~~~

t=acos(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector
+ **t** : real or complex vector




Description
~~~~~~~~~~~

The components of vector **t** are cosine inverse of the corresponding
entries of vector **x** . Definition domain is [-1, 1].

**acos** takes values in :



Examples
~~~~~~~~


::

    
    
    x=[1,%i,-1,-%i]
    cos(acos(x))
     
      




