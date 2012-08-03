====
"minss"
====

Scilab Function Last update : April 1993
**minss** - minimal realization



Calling Sequence
~~~~~~~~~~~~~~~~

[slc]=minss( sl [,tol])




Parameters
~~~~~~~~~~


+ **sl,slc** : **syslin** lists (linear systems in state-space form)
+ **tol** : real (threshold for rank determination (see **contr** ))




Description
~~~~~~~~~~~

**minss** returns in **slc** a minimal realization of **sl** .



Examples
~~~~~~~~


::

    
    
    sl=syslin('c',[1 0;0 2],[1;0],[2 1]);
    ssprint(sl);
    ssprint(minss(sl))
     
      




See Also
~~~~~~~~

` **contr** `_,` **minreal** `_,` **arhnk** `_,` **contrss** `_,`
**obsvss** `_,` **balreal** `_,

.. _
      : ://./control/contrss.htm
.. _
      : ://./control/arhnk.htm
.. _
      : ://./control/minreal.htm
.. _
      : ://./control/obsvss.htm
.. _
      : ://./control/contr.htm
.. _
      : ://./control/balreal.htm


