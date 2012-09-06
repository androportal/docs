


randpencil
==========

random pencil



Calling Sequence
~~~~~~~~~~~~~~~~


::

    F=randpencil(eps,infi,fin,eta)




Arguments
~~~~~~~~~

:eps vector of integers
: :infi vector of integers
: :fin real vector, or monic polynomial, or vector of monic polynomial
: :eta vector of integers
: :F real matrix pencil `F=s*E-A` ( `s=poly(0,'s')`)
:



Description
~~~~~~~~~~~

Utility function. `F=randpencil(eps,infi,fin,eta)` returns a random
pencil `F` with given Kronecker structure. The structure is given by:
`eps=[eps1,...,epsk]`: structure of epsilon blocks (size
eps1x(eps1+1),....) `fin=[l1,...,ln]` set of finite eigenvalues
(assumed real) (possibly []) `infi=[k1,...,kp]` size of J-blocks at
infinity `ki>=1` (infi=[] if no J blocks). `eta=[eta1,...,etap]`:
structure ofeta blocks (size eta1+1)xeta1,...)

`epsi`'s should be >=0, `etai`'s should be >=0, `infi`'s should be
>=1.

If `fin` is a (monic) polynomial, the finite block admits the roots of
`fin` as eigenvalues.

If `fin` is a vector of polynomial, they are the finite elementary
divisors of `F` i.e. the roots of `p(i)` are finite eigenvalues of
`F`.



Examples
~~~~~~~~


::

    F=randpencil([0,1],[2],[-1,0,1],[3]);
    [Q,Z,Qd,Zd,numbeps,numbeta]=`kroneck`_(F);
    Qd, Zd
    s=`poly`_(0,'s');
    F=randpencil([],[1,2],s^3-2,[]); //regular pencil
    `det`_(F)




See Also
~~~~~~~~


+ `kroneck`_ Kronecker form of matrix pencil
+ `pencan`_ canonical form of matrix pencil
+ `penlaur`_ Laurent coefficients of matrix pencil


.. _kroneck: kroneck.html
.. _penlaur: penlaur.html
.. _pencan: pencan.html


