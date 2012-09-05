


ctr_gram
========

controllability gramian



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Gc]=ctr_gram(A,B [,dom])
    [Gc]=ctr_gram(sl)




Arguments
~~~~~~~~~

:A,B two real matrices of appropriate dimensions
: :dom character string ( `'c'` (default value) or `'d'`)
: :sl linear system, `syslin` list
:



Description
~~~~~~~~~~~

Controllability gramian of `(A,B)` or `sl` (a `syslin` linear system).

`dom` character string giving the time domain : `"d"` for a discrete
time system and `"c"` for continuous time (default case).



Examples
~~~~~~~~


::

    A=`diag`_([-1,-2,-3]);B=`rand`_(3,2);
    Wc=ctr_gram(A,B)
    U=`rand`_(3,3);A1=U*A/U;B1=U*B;
    Wc1=ctr_gram(A1,B1)    //Not invariant!




See Also
~~~~~~~~


+ `equil1`_ balancing (nonnegative) pair of matrices
+ `obs_gram`_ observability gramian
+ `contr`_ controllability, controllable subspace, staircase
+ `cont_mat`_ controllability matrix
+ `cont_frm`_ transfer to controllable state-space
+ `contrss`_ controllable part


.. _cont_mat: cont_mat.html
.. _contr: contr.html
.. _cont_frm: cont_frm.html
.. _contrss: contrss.html
.. _obs_gram: obs_gram.html
.. _equil1: equil1.html


