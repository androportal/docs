


projsl
======

linear system projection



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [slp]=projsl(sl,Q,M)




Arguments
~~~~~~~~~

:sl,slp `syslin` lists
: :Q,M matrices (projection factorization)
:



Description
~~~~~~~~~~~

`slp`= projected model of `sl` where `Q*M` is the full rank
factorization of the projection.

If `(A,B,C,D)` is the representation of `sl`, the projected model is
given by `(M*A*Q,M*B,C*Q,D)`.

Usually, the projection `Q*M` is obtained as the spectral projection
of an appropriate auxiliary matrix `W` e.g. `W` = product of
(weighted) gramians or product of Riccati equations.



Examples
~~~~~~~~


::

    `rand`_('seed',0);sl=`ssrand`_(2,2,5);[A,B,C,D]=`abcd`_(sl);poles=`spec`_(A)
    [Q,M]=`pbig`_(A,0,'c');  //keeping unstable poles
    slred=projsl(sl,Q,M);`spec`_(slred('A'))
    sl('D')=`rand`_(2,2);  //making proper system
    `trzeros`_(sl)  //zeros of sl
    wi=`inv`_(sl);  //wi=inverse in state-space
    [q,m]=`psmall`_(wi('A'),2,'d');  //keeping small zeros (poles of wi) i.e. abs(z)<2
    slred2=projsl(sl,q,m);
    `trzeros`_(slred2)  //zeros of slred2 = small zeros of sl
    //  Example keeping second order modes
    A=`diag`_([-1,-2,-3]);
    sl=`syslin`_('c',A,`rand`_(3,2),`rand`_(2,3));[nk2,W]=`hankelsv`_(sl)
    [Q,M]=`pbig`_(W,nk2(2)-%eps,'c');    //keeping 2 eigenvalues of W
    slr=projsl(sl,Q,M);  //reduced model
    `hankelsv`_(slr)




See Also
~~~~~~~~


+ `pbig`_ eigen-projection


.. _pbig: pbig.html


