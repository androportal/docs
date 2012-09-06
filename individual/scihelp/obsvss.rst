


obsvss
======

observable part



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Ao,Bo,Co]=obsvss(A,B,C [,tol])
    [slo]=obsvss(sl [,tol])




Arguments
~~~~~~~~~

:A,B,C,Ao,Bo,Co real matrices
: :sl,slo `syslin` lists
: :tol real (threshold) (default value `100*%eps`)
:



Description
~~~~~~~~~~~

`slo=(Ao,Bo,Co)` is the observable part of linear system `sl=(A,B,C)`
( `syslin` list)

`tol` threshold to test controllability (see `contr`); default value =
`100*%eps`



See Also
~~~~~~~~


+ `contr`_ controllability, controllable subspace, staircase
+ `contrss`_ controllable part
+ `obsv_mat`_ observability matrix
+ `obs_gram`_ observability gramian


.. _obsv_mat: obsv_mat.html
.. _contr: contr.html
.. _obs_gram: obs_gram.html
.. _contrss: contrss.html


