====
"casc"
====

Scilab Function Last update : April 1993
**casc** - cascade realization of filter from coefficients



Calling Sequence
~~~~~~~~~~~~~~~~

[cels]=casc(x,z)




Parameters
~~~~~~~~~~


+ **x** : (4xN)-matrix where each column is a cascade element, the
  first two column entries being the numerator coefficients and the
  second two column entries being the denominator coefficients
+ **z** : string representing the cascade variable
+ **cels** : resulting cascade representation




Description
~~~~~~~~~~~

Creates cascade realization of filter from a matrix of coefficients
(utility function).



Examples
~~~~~~~~


::

    
    
    x=[1,2,3;4,5,6;7,8,9;10,11,12]
    cels=casc(x,'z')
     
      




