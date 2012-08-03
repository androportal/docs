====
"routh_t"
====

Scilab Function Last update : April 1993
**routh_t** - Routh's table



Calling Sequence
~~~~~~~~~~~~~~~~

r=routh_t(h [,k]).




Parameters
~~~~~~~~~~


+ **h** : square rational matrix




Description
~~~~~~~~~~~

**r=routh_t(h,k)** computes Routh's table of denominator of the system
described by transfer matrix SISO **h** with the feedback by the gain
**k** .

If **k=poly(0,'k')** we will have a polynomial matrix with dummy
variable **k** , formal expression of the Routh table.



