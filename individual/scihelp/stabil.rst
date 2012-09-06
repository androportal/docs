


stabil
======

stabilization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    F=stabil(A,B,alfa)
    K=stabil(Sys,alfa,beta)




Arguments
~~~~~~~~~

:A square real matrix ( `nx x nx`)
: :B real matrix ( `nx x nu`)
: :alfa, beta real or complex vector (in conjugate pairs) or real
  number.
: :F real matrix ( `nx x nu`)
: :Sys linear system ( `syslin` list) ( `m` inputs, `p` outputs).
: :K linear system ( `p` inputs, `m` outputs)
:



Description
~~~~~~~~~~~

`F=stabil(A,B,alfa)` returns a gain matrix `F` such that `A+B*F` is
stable if pair `(A,B)` is stabilizable. Assignable poles are set to
`alfa(1),alfa(2),...`. If `(A,B)` is not stabilizable a warning is
given and assignable poles are set to `alfa(1),alfa(2),...`. If `alfa`
is a number all eigenvalues are set to this `alfa` (default value is
`alfa=-1`).

`K=stabil(Sys,alfa,beta)` returns `K`, a compensator for `Sys` such
that `(A,B)`-controllable eigenvalues are set to `alfa` and
`(C,A)`-observable eigenvalues are set to `beta`.

All assignable closed loop poles (which are given by the eigenvalues
of `Aclosed=h_cl(Sys,K)` are set to `alfa(i)`'s and `beta(j)`'s.



Examples
~~~~~~~~


::

    // Gain:
    Sys=`ssrand`_(0,2,5,`list`_('st',2,3,3));
    A=Sys('A');B=Sys('B');F=stabil(A,B);
    `spec`_(A) //2 controllable modes 2 unstable uncontrollable modes
    //and one stable uncontrollable mode
    `spec`_(A+B*F) //the two controllable modes are set to -1.
    // Compensator:
    Sys=`ssrand`_(3,2,5,`list`_('st',2,3,3)); //3 outputs, 2 inputs, 5 states
    //2 controllables modes, 3 controllable or stabilizable modes.
    K=stabil(Sys,-2,-3);  //Compensator for Sys.
    `spec`_(Sys('A'))
    `spec`_(`h_cl`_(Sys,K))   //K Stabilizes what can be stabilized.




See Also
~~~~~~~~


+ `st_ility`_ stabilizability test
+ `contr`_ controllability, controllable subspace, staircase
+ `ppol`_ pole placement


.. _ppol: ppol.html
.. _contr: contr.html
.. _st_ility: st_ility.html


