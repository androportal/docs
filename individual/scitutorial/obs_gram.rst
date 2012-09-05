


obs_gram
========

observability gramian



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Go=obs_gram(A,C [,dom])
    Go=obs_gram(sl)




Arguments
~~~~~~~~~

:A,C real matrices (of appropriate dimensions)
: :dom string ( `"d'` or `"c"` (default value))
: :sl `syslin` list
:



Description
~~~~~~~~~~~

Observability gramian of the pair `(A,C)` or linear system `sl` (
`syslin` list). `dom` is the domain which can be

:"c" continuous system (default)
: :"d" discrete system
:



Examples
~~~~~~~~


::

    A=-`diag`_(1:3);C=`rand`_(2,3);
    Go=obs_gram(A,C,'c');     // <=> w=syslin('c',A,[],C); Go=obs_gram(w);
    `norm`_(Go*A+A'*Go+C'*C,1)
    `norm`_(`lyap`_(A,-C'*C,'c')-Go,1)
    A=A/4; Go=obs_gram(A,C,'d');    //discrete time case
    `norm`_(`lyap`_(A,-C'*C,'d')-Go,1)




See Also
~~~~~~~~


+ `ctr_gram`_ controllability gramian
+ `obsvss`_ observable part
+ `obsv_mat`_ observability matrix
+ `lyap`_ Lyapunov equation


.. _obsv_mat: obsv_mat.html
.. _lyap: lyap.html
.. _obsvss: obsvss.html
.. _ctr_gram: ctr_gram.html


