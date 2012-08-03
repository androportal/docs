====
"proj"
====

Scilab Function Last update : April 1993
**proj** - projection



Calling Sequence
~~~~~~~~~~~~~~~~

P = proj(X1,X2)




Parameters
~~~~~~~~~~


+ **X1,X2** : two real matrices with equal number of columns
+ **P** : real projection matrix ( **P^2=P** )




Description
~~~~~~~~~~~

**P** is the projection on **X2** parallel to **X1** .



Examples
~~~~~~~~


::

    
    
    X1=rand(5,2);X2=rand(5,3);
    P=proj(X1,X2);
    norm(P^2-P,1)
    trace(P)    // This is dim(X2)
    [Q,M]=fullrf(P);
    svd([Q,X2])   // span(Q) = span(X2)
     
      




See Also
~~~~~~~~

` **projspec** `_,` **orth** `_,` **fullrf** `_,



Author
~~~~~~

F. D.; ;

.. _
      : ://./linear/orth.htm
.. _
      : ://./linear/projspec.htm
.. _
      : ://./linear/fullrf.htm


