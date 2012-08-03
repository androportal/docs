====
"plzr"
====

Scilab Function Last update : April 1993
**plzr** - pole-zero plot



Calling Sequence
~~~~~~~~~~~~~~~~

plzr(sl)




Parameters
~~~~~~~~~~


+ **sl** : list ( **syslin** )




Description
~~~~~~~~~~~

produces a pole-zero plot of the linear system **sl** ( **syslin**
list)



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    n=[1+s   2+3*s+4*s^2        5; 0        1-s             s];
    d=[1+3*s   5-s^3           s+1;1+s     1+s+s^2      3*s-1];
    h=syslin('c',n./d); 
    plzr(h);
     
      




See Also
~~~~~~~~

` **trzeros** `_,` **roots** `_,` **syslin** `_,

.. _
      : ://./graphics/../control/trzeros.htm
.. _
      : ://./graphics/../elementary/syslin.htm
.. _
      : ://./graphics/../polynomials/roots.htm


