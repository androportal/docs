


minss
=====

minimal realization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [slc]=minss( sl [,tol])




Arguments
~~~~~~~~~

:sl,slc `syslin` lists (linear systems in state-space form)
: :tol real (threshold for rank determination (see `contr`))
:



Description
~~~~~~~~~~~

`minss` returns in `slc` a minimal realization of `sl`.



Examples
~~~~~~~~


::

    sl=`syslin`_('c',[1 0;0 2],[1;0],[2 1]);
    `ssprint`_(sl);
    `ssprint`_(minss(sl))




See Also
~~~~~~~~


+ `contr`_ controllability, controllable subspace, staircase
+ `minreal`_ minimal balanced realization
+ `arhnk`_ Hankel norm approximant
+ `contrss`_ controllable part
+ `obsvss`_ observable part
+ `balreal`_ balanced realization


.. _contr: contr.html
.. _balreal: balreal.html
.. _obsvss: obsvss.html
.. _contrss: contrss.html
.. _arhnk: arhnk.html
.. _minreal: minreal.html


