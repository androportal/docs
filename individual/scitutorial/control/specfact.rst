====
"specfact"
====

Scilab Function Last update : April 1993
**specfact** - spectral factor



Calling Sequence
~~~~~~~~~~~~~~~~

[W0,L]=specfact(A,B,C,D)




Description
~~~~~~~~~~~

Given a spectral density matrix **phi(s)** :


::

    
    
                     -1                   -1
         R + C*(s*I-A) * B  +  B'*(-s*I-A') * C'  with R=D+D' > 0
       
        


**specfact** computes **W0** and **L** such that
**W(s)=W0+L*(s*I-A)^-1*B** is a spectral factor of of **PHI(s)** ,
i.e.

**phi(s)=W'(-s)*W(s)**



Examples
~~~~~~~~


::

    
    
    A=diag([-1,-2]);B=[1;1];C=[1,1];D=1;s=poly(0,'s');
    W1=syslin('c',A,B,C,D);
    phi=gtild(W1,'c')+W1;
    phis=clean(ss2tf(phi))
    clean(phis-horner(phis,-s)');   //check this is 0...
    [A,B,C,D]=abcd(W1);
    [W0,L]=specfact(A,B,C,D);
    W=syslin('c',A,B,L,W0)
    Ws=ss2tf(W);
    horner(Ws,-s)*Ws
     
      




See Also
~~~~~~~~

` **gtild** `_,` **sfact** `_,` **fspecg** `_,



Author
~~~~~~

F. D.

.. _
      : ://./control/../robust/gtild.htm
.. _
      : ://./control/../robust/fspecg.htm
.. _
      : ://./control/../polynomials/sfact.htm


