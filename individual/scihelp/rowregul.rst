


rowregul
========

removing poles and zeros at infinity



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Stmp,Ws]=rowregul(Sl,alfa,beta)




Arguments
~~~~~~~~~

:Sl,Stmp `syslin` lists
: :alfa,beta real numbers (new pole and zero positions)
:



Description
~~~~~~~~~~~

computes a postfilter `Ws` such that `Stmp=Ws*Sl` is proper and with
full rank `D` matrix.

Poles at infinity of `Sl` are moved to `alfa`;

Zeros at infinity of `Sl` are moved to `beta`;

`Sl` is assumed to be a right invertible linear system ( `syslin`
list) in state-space representation with possibly a polynomial `D`
matrix.

This function is the dual of colregul (see function code).



Examples
~~~~~~~~


::

    s=%s;
    w=[1/s,0;s/(s^3+2),2/s];
    Sl=`tf2ss`_(w);
    [Stmp,Ws]=rowregul(Sl,-1,-2);
    Stmp('D')     // D matrix of Stmp
    `clean`_(`ss2tf`_(Stmp))




See Also
~~~~~~~~


+ `invsyslin`_ system inversion
+ `colregul`_ removing poles and zeros at infinity


.. _invsyslin: invsyslin.html
.. _colregul: colregul.html


