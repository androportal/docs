====
"percentk"
====

Scilab Function Last update : April 1993
**%k** - Jacobi's complete elliptic integral



Calling Sequence
~~~~~~~~~~~~~~~~

[K]=%k(m)




Parameters
~~~~~~~~~~


+ **m** : parameter of the elliptic integral **0<m<1** ( **m** can be
  a vector)
+ **K** : value of the elliptic integral from 0 to 1 on the real axis




Description
~~~~~~~~~~~

Calculates Jacobi's complete elliptic integral of the first kind :



References
~~~~~~~~~~

Abramowitz and Stegun page 598



Examples
~~~~~~~~


::

    
    
    m=0.4;
    %asn(1,m)
    %k(m)
     
      




See Also
~~~~~~~~

` **%asn** `_,



Author
~~~~~~

F.D.

.. _
      : ://./signal/percentasn.htm


