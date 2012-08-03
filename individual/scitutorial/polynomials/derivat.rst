====
"derivat"
====

Scilab Function Last update : April 1993
**derivat** - rational matrix derivative



Calling Sequence
~~~~~~~~~~~~~~~~

pd=derivat(p)




Parameters
~~~~~~~~~~


+ **p** : polynomial or rational matrix




Description
~~~~~~~~~~~

computes the derivative of the polynomial or rational function matrix
w.r.t the dummy variable.



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    derivat(1/s)  // -1/s^2;
     
      




