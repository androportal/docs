


arma2p
======

extract polynomial matrices from ar representation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [A,B,D]=arma2p(ar)




Arguments
~~~~~~~~~

:A,B,D three polynomial matrices
: :ar Scilab 'ar' tlist for arma storage (see `armac`).
:



Description
~~~~~~~~~~~

this function extract polynomial matrices `(A,B,D)` from an armax
description.



Examples
~~~~~~~~


::

    a=[1,-2.851,2.717,-0.865].*.`eye`_(2,2)
    b=[0,1,1,1].*.[1;1];
    d=[1,0.7,0.2].*.`eye`_(2,2);
    sig=`eye`_(2,2);
    ar=`armac`_(a,b,d,2,1,sig)
    // extract polynomial matrices from ar representation 
    [A,B,D]=arma2p(ar);




See Also
~~~~~~~~


+ `arma`_ Scilab arma library
+ `armax`_ armax identification
+ `armax1`_ armax identification
+ `arsimul`_ armax simulation
+ `armac`_ Scilab description of an armax process


.. _arma: arma.html
.. _arsimul: arsimul.html
.. _armax1: armax1.html
.. _armac: armac.html
.. _armax: armax.html


