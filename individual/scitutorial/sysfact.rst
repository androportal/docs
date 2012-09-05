


sysfact
=======

system factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [S,Series]=sysfact(Sys,Gain,flag)




Arguments
~~~~~~~~~

:Sys `syslin` list containing the matrices `[A,B,C,D]`.
: :Gain real matrix
: :flag string `'post'` or `'pre'`
: :S `syslin` list
: :Series `syslin` list
:



Description
~~~~~~~~~~~

If `flag` equals `'post'`, `sysfact` returns in `S` the linear system
with ABCD matrices `(A+B*Gain, B , Gain, I)`, and `Series`, a minimal
realization of the series system `Sys*S`. If `flag` equals `'pre'`,
`sysfact` returns the linear system `(A+Gain*C, Gain , C, I)` and
`Series`, a minimal realization of the series system `S*Sys`.



Examples
~~~~~~~~


::

    //Kalman filter
    Sys=`ssrand`_(3,2,4);Sys('D')=`rand`_(3,2);
    S=sysfact(Sys,`lqr`_(Sys),'post');
    ww=`minss`_(Sys*S);
    `ss2tf`_(`gtild`_(ww)*ww),Sys('D')'*Sys('D')
    //Kernel
    Sys=`ssrand`_(2,3,4);
    [X,d,F,U,k,Z]=`abinv`_(Sys);
    `ss2tf`_(Sys*Z)
    `ss2tf`_(Sys*sysfact(Sys,F,'post')*U)




See Also
~~~~~~~~


+ `lqr`_ LQ compensator (full state)
+ `lqe`_ linear quadratic estimator (Kalman Filter)


.. _lqe: lqe.html
.. _lqr: lqr.html


