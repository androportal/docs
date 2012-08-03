====
"arma2p"
====

Scilab Function Last update : April 1993
**arma2p** - extract polynomial matrices from ar representation



Calling Sequence
~~~~~~~~~~~~~~~~

[A,B,D]=arma2p(ar)




Parameters
~~~~~~~~~~


+ **A,B,D** : three polynomial matrices
+ **ar** : Scilab 'ar' tlist for arma storage (see **armac** ).




Description
~~~~~~~~~~~

this function extract polynomial matrices **(A,B,D)** from an armax
description.



Examples
~~~~~~~~


::

    
    
    a=[1,-2.851,2.717,-0.865].*.eye(2,2)
    b=[0,1,1,1].*.[1;1];
    d=[1,0.7,0.2].*.eye(2,2);
    sig=eye(2,2);
    ar=armac(a,b,d,2,1,sig)
    // extract polynomial matrices from ar representation 
    [A,B,D]=arma2p(ar);
     
      




See Also
~~~~~~~~

` **arma** `_,` **armax** `_,` **armax1** `_,` **arsimul** `_,`
**armac** `_,

.. _
      : ://./arma/arsimul.htm
.. _
      : ://./arma/armac.htm
.. _
      : ://./arma/arma.htm
.. _
      : ://./arma/armax1.htm
.. _
      : ://./arma/armax.htm


