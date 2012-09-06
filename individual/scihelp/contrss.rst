


contrss
=======

controllable part



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [slc]=contrss(sl [,tol])




Arguments
~~~~~~~~~

:sl linear system ( `syslin` list)
: :tol is a threshold for controllability (see `contr`). default value
  is `sqrt(%eps)`.
:



Description
~~~~~~~~~~~

returns the controllable part of the linear system `sl = (A,B,C,D)` in
state-space form.



Examples
~~~~~~~~


::

    A=[1,1;0,2];B=[1;0];C=[1,1];sl=`syslin`_('c',A,B,C);  //Non minimal
    slc=contrss(sl);
    sl1=`ss2tf`_(sl);sl2=`ss2tf`_(slc);      //Compare sl1 and sl2




See Also
~~~~~~~~


+ `cont_mat`_ controllability matrix
+ `ctr_gram`_ controllability gramian
+ `cont_frm`_ transfer to controllable state-space
+ `contr`_ controllability, controllable subspace, staircase


.. _cont_mat: cont_mat.html
.. _cont_frm: cont_frm.html
.. _contr: contr.html
.. _ctr_gram: ctr_gram.html


