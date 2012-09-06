


balreal
=======

balanced realization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [slb [,U] ] = balreal(sl)




Arguments
~~~~~~~~~

:sl,slb linear systems ( `syslin` lists)
:



Description
~~~~~~~~~~~

Balanced realization of linear system `sl=[A,B,C,D]`. `sl` can be a
continuous-time or discrete-time state-space system. sl is assumed
stable.


::

    slb=[`inv`_(U)*A*U ,`inv`_(U)*B , C*U , D]


is the balanced realization.

`slb` is returned as a `syslin` list.



Examples
~~~~~~~~


::

    A=`diag`_([-1,-2,-3,-4,-5]);B=`rand`_(5,2);C=`rand`_(1,5);
    sl=`syslin`_('c',A,B,C);
    [slb,U]=balreal(sl);
    Wc=`clean`_(`ctr_gram`_(slb))
    W0=`clean`_(`obs_gram`_(slb))




See Also
~~~~~~~~


+ `ctr_gram`_ controllability gramian
+ `obs_gram`_ observability gramian
+ `hankelsv`_ Hankel singular values
+ `equil`_ balancing of pair of symmetric matrices
+ `equil1`_ balancing (nonnegative) pair of matrices


.. _hankelsv: hankelsv.html
.. _obs_gram: obs_gram.html
.. _equil: equil.html
.. _equil1: equil1.html
.. _ctr_gram: ctr_gram.html


