


minreal
=======

minimal balanced realization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    slb=minreal(sl [,tol])




Arguments
~~~~~~~~~

:sl,slb `syslin` lists
: :tol real (threshold)
:



Description
~~~~~~~~~~~

`[ae,be,ce]=minreal(a,b,c,domain [,tol])` returns the balanced
realization of linear system `sl` ( `syslin` list).

`sl` is assumed stable.

`tol` threshold used in `equil1`.



Examples
~~~~~~~~


::

    A=[-`eye`_(2,2),`rand`_(2,2);`zeros`_(2,2),-2*`eye`_(2,2)];
    B=[`rand`_(2,2);`zeros`_(2,2)];C=`rand`_(2,4);
    sl=`syslin`_('c',A,B,C);
    slb=minreal(sl);
    `ss2tf`_(sl)
    `ss2tf`_(slb)
    `ctr_gram`_(sl)
    `clean`_(`ctr_gram`_(slb))
    `clean`_(`obs_gram`_(slb))




See Also
~~~~~~~~


+ `minss`_ minimal realization
+ `balreal`_ balanced realization
+ `arhnk`_ Hankel norm approximant
+ `equil`_ balancing of pair of symmetric matrices
+ `equil1`_ balancing (nonnegative) pair of matrices


.. _minss: minss.html
.. _balreal: balreal.html
.. _arhnk: arhnk.html
.. _equil: equil.html
.. _equil1: equil1.html


