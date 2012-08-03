====
"chepol"
====

Scilab Function Last update : April 1993
**chepol** - Chebychev polynomial



Calling Sequence
~~~~~~~~~~~~~~~~

[Tn]=chepol(n,var)




Parameters
~~~~~~~~~~


+ **n** : integer : polynomial order
+ **var** : string : polynomial variable
+ **Tn** : polynomial in the variable **var**




Description
~~~~~~~~~~~

Recursive implementation of Chebychev polynomial.
**Tn=2*poly(0,var)*chepol(n-1,var)-chepol(n-2,var)** with **T0=1** and
**T1=poly(0,var)** .



Examples
~~~~~~~~


::

    
    
    chepol(4,'x')
     
      




Author
~~~~~~

F. D.



