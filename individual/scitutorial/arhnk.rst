


arhnk
=====

Hankel norm approximant



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [slm]=arhnk(sl,ord,[tol])




Arguments
~~~~~~~~~

:sl linear system ( `syslin` list)
: :ord integer, order of the approximant
: :tol threshold for rank determination in `equil1`
:



Description
~~~~~~~~~~~

computes `slm`, the optimal Hankel norm approximant of the stable
continuous-time linear system `sl` with matrices `[A,B,C,D]`.



Examples
~~~~~~~~


::

    A=`diag`_([-1,-2,-3,-4,-5]);B=`rand`_(5,1);C=`rand`_(1,5);
    sl=`syslin`_('c',A,B,C);
    slapprox=arhnk(sl,2);
    [nk,W]=`hankelsv`_(sl);nk
    [nkred,Wred]=`hankelsv`_(slapprox);nkred




See Also
~~~~~~~~


+ `equil`_ balancing of pair of symmetric matrices
+ `equil1`_ balancing (nonnegative) pair of matrices
+ `hankelsv`_ Hankel singular values


.. _hankelsv: hankelsv.html
.. _equil1: equil1.html
.. _equil: equil.html


