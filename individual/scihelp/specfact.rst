


specfact
========

spectral factor



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [W0,L]=specfact(A,B,C,D)




Description
~~~~~~~~~~~

Given a spectral density matrix `phi(s)`:


::

    -1                   -1
    R + C*(s*I-A) * B  +  B'*(-s*I-A') * C'  with R=D+D' > 0


`specfact` computes `W0` and `L` such that `W(s)=W0+L*(s*I-A)^-1*B` is
a spectral factor of of `PHI(s)`, i.e.

`phi(s)=W'(-s)*W(s)`



Examples
~~~~~~~~


::

    A=`diag`_([-1,-2]);B=[1;1];C=[1,1];D=1;s=`poly`_(0,'s');
    W1=`syslin`_('c',A,B,C,D);
    phi=`gtild`_(W1,'c')+W1;
    phis=`clean`_(`ss2tf`_(phi))
    `clean`_(phis-`horner`_(phis,-s)');   //check this is 0...
    [A,B,C,D]=`abcd`_(W1);
    [W0,L]=specfact(A,B,C,D);
    W=`syslin`_('c',A,B,L,W0)
    Ws=`ss2tf`_(W);
    `horner`_(Ws,-s)*Ws




See Also
~~~~~~~~


+ `gtild`_ tilde operation
+ `sfact`_ discrete time spectral factorization
+ `fspecg`_ stable factorization of continuous time dynamical systems


.. _gtild: gtild.html
.. _fspecg: fspecg.html
.. _sfact: sfact.html


