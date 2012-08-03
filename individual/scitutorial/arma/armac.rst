====
"armac"
====

Scilab Function Last update : April 1993
**armac** - Scilab description of an armax process



Calling Sequence
~~~~~~~~~~~~~~~~

[ar]=armac(a,b,d,ny,nu,sig)




Parameters
~~~~~~~~~~


+ **a=[Id,a1,..,a_r] ** : is a matrix of size (ny,r*ny)
+ **b=[b0,.....,b_s] ** : is a matrix of size (ny,(s+1)*nu)
+ **d=[Id,d1,..,d_p] ** : is a matrix of size (ny,p*ny);
+ **ny** : dimension of the output y
+ **nu** : dimension of the output u
+ **sig** : a matrix of size (ny,ny)




Description
~~~~~~~~~~~

This function creates a description as a tlist of an ARMAX process

**ar** is defined by


::

    
    
    ar=tlist(['ar','a','b','d','ny','nu','sig'],a,b,d,ny,nu,sig);
       
        


and thus the coefficients of **ar** can be retrieved by e.g. **
ar('a') ** .



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
**arma2p** `_,` **tlist** `_,

.. _
      : ://./arma/../programming/tlist.htm
.. _
      : ://./arma/arsimul.htm
.. _
      : ://./arma/arma.htm
.. _
      : ://./arma/armax1.htm
.. _
      : ://./arma/arma2p.htm
.. _
      : ://./arma/armax.htm


