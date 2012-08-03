====
"polar"
====

Scilab Function Last update : April 1993
**polar** - polar form



Calling Sequence
~~~~~~~~~~~~~~~~

[Ro,Theta]=polar(A)




Parameters
~~~~~~~~~~


+ **A** : real or complex square matrix
+ **Ro, ** : real matrix
+ **Theta, ** : real or complex matrix




Description
~~~~~~~~~~~

**[Ro,Theta]=polar(A)** returns the polar form of **A** i.e.
**A=Ro*expm(%i*Theta)** **Ro** symmetric >=0 and **Theta** hermitian
>=0.



Examples
~~~~~~~~


::

    
    
    A=rand(5,5);
    [Ro,Theta]=polar(A);
    norm(A-Ro*expm(%i*Theta),1)
     
      




See Also
~~~~~~~~

` **expm** `_,` **svd** `_,



Author
~~~~~~

F. Delebecque INRIA; ;

.. _
      : ://./linear/expm.htm
.. _
      : ://./linear/svd.htm


