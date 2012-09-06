


svplot
======

singular-value sigma-plot



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [SVM]=svplot(sl,[w])




Arguments
~~~~~~~~~

:sl `syslin` list (continuous, discrete or sampled system)
: :w real vector (optional parameter)
:



Description
~~~~~~~~~~~

computes for the system `sl=(A,B,C,D)` the singular values of its
transfer function matrix:


::

    G(jw) = C(jw*I-A)B^-1+D
    `or`_
    G(`exp`_(jw)) = C(`exp`_(jw)*I-A)B^-1+D
    `or`_
    G(`exp`_(jwT)) = C(`exp`_(jw*T)*I-A)B^-1+D


evaluated over the frequency range specified by `w`. (T is the
sampling period, `T=sl('dt')` for sampled systems).

`sl` is a `syslin` list representing the system `[A,B,C,D]` in state-
space form. `sl` can be continuous or discrete time or sampled system.

The `i`-th column of the output matrix `SVM` contains the singular
values of `G` for the `i`-th frequency value `w(i)`.


::

    SVM = svplot(sl)


is equivalent to


::

    SVM = svplot(sl,`logspace`_(-3,3))  (continuous)



::

    SVM = svplot(sl,`logspace`_(-3,%pi)) (discrete)




Examples
~~~~~~~~


::

    x=`logspace`_(-3,3);
    y=svplot(`ssrand`_(2,2,4),x);
    `clf`_();`plot2d1`_("oln",x',20*`log`_(y')/`log`_(10));
    `xgrid`_(12)
    `xtitle`_("Singular values plot","(Rd/sec)", "Db");




