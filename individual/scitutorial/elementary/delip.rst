====
"delip"
====

Scilab Function Last update : April 1993
**delip** - elliptic integral



Calling Sequence
~~~~~~~~~~~~~~~~

[r]=delip(x,ck)




Parameters
~~~~~~~~~~


+ **x** : real number (or real vector)
+ **ck** : real number between -1 and 1
+ **r** : real or complex number (or vector)




Description
~~~~~~~~~~~

returns the value of the elliptic integral with parameter **ck** :

**x** real and positive. When called with **x** a real vector **r** is
evaluated for each entry of **x** .



Examples
~~~~~~~~


::

    
    
    ck=0.5;
    delip([1,2],ck)
    deff('y=f(t)','y=1/sqrt((1-t^2)*(1-ck^2*t^2))')
    intg(0,1,f)    //OK since real solution!
     
      




See Also
~~~~~~~~

` **amell** `_,` **%asn** `_,` **%sn** `_,

.. _
      : ://./elementary/../signal/percentsn.htm
.. _
      : ://./elementary/../signal/percentasn.htm
.. _
      : ://./elementary/amell.htm


