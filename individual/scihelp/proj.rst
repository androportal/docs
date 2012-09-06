


proj
====

projection



Calling Sequence
~~~~~~~~~~~~~~~~


::

    P = proj(X1,X2)




Arguments
~~~~~~~~~

:X1,X2 two real matrices with equal number of columns
: :P real projection matrix ( `P^2=P`)
:



Description
~~~~~~~~~~~

`P` is the projection on `X2` parallel to `X1`.



Examples
~~~~~~~~


::

    X1=`rand`_(5,2);X2=`rand`_(5,3);
    P=proj(X1,X2);
    `norm`_(P^2-P,1)
    `trace`_(P)    // This is dim(X2)
    [Q,M]=`fullrf`_(P);
    `svd`_([Q,X2])   // span(Q) = span(X2)




See Also
~~~~~~~~


+ `projspec`_ spectral operators
+ `orth`_ orthogonal basis
+ `fullrf`_ full rank factorization


.. _orth: orth.html
.. _projspec: projspec.html
.. _fullrf: fullrf.html


