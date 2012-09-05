


ui_observer
===========

unknown input observer



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [UIobs,J,N]=ui_observer(Sys,reject,C1,D1)
    [UIobs,J,N]=ui_observer(Sys,reject,C1,D1,flag,alfa,beta)




Arguments
~~~~~~~~~

:Sys `syslin` list containing the matrices `(A,B,C2,D2)`.
: :reject integer vector, indices of inputs of `Sys` which are
  unknown.
: :C1 real matrix
: :D1 real matrix. `C1` and `D1` have the same number of rows.
: :flag string `'ge'` or `'st'` (default) or `'pp'`.
: :alfa real or complex vector (loc. of closed loop poles)
: :beta real or complex vector (loc. of closed loop poles)
:



Description
~~~~~~~~~~~

Unknown input observer.

`Sys: (w,u) --> y` is a `(A,B,C2,D2)` syslin linear system with two
inputs w and u, w being the unknown input. The matrices B and D2 of
Sys are (implicitly) partitioned as: `B=[B1,B2]` and `D2=[D21,D22]`
with `B1=B(:,reject)` and `D21=D2(:,reject)` where reject = indices of
unknown inputs. The matrices `C1` and `D1` define `z = C1 x + D1
(w,u)`, the to-be-estimated output.

The matrix `D1` is (implicitly) partitioned as `D1=[D11,D12]` with
`D11=D(:,reject)`

The data (Sys, reject,C1, D1) define a 2-input 2-output system:


::

    xdot =  A x + B1  w + B2  u
       z = C1 x + D11 w + D12 u
       y = C2 x + D21 w + D22 u


An observer `(u,y) --> zhat` is looked for the output z.

`flag='ge'` no stability constraints `flag='st'` stable observer
(default) `flag='pp'` observer with pole placement alfa,beta = desired
location of closed loop poles (default -1, -2) J=y-output to x-state
injection. N=y-output to z-estimated output injection.

UIobs = linear system (u,y) --> zhat such that: The transfer function:
(w,u) --> z equals the composed transfer function: [0,I; UIobs Sys]
(w,u) -----> (u,y) -----> zhat i.e. transfer function of system
{A,B,C1,D1} equals transfer function `UIobs*[0,I; Sys]`

Stability (resp. pole placement) requires detectability (resp.
observability) of (A,C2).



Examples
~~~~~~~~


::

    A=`diag`_([3,-3,7,4,-4,8]);
    B=[`eye`_(3,3);`zeros`_(3,3)];
    C=[0,0,1,2,3,4;0,0,0,0,0,1];
    D=[1,2,3;0,0,0];
    `rand`_('seed',0);w=`ss2ss`_(`syslin`_('c',A,B,C,D),`rand`_(6,6));
    [A,B,C,D]=`abcd`_(w);
    B=[B,`matrix`_(1:18,6,3)];D=[D,`matrix`_(-(1:6),2,3)];
    reject=1:3;
    Sys=`syslin`_('c',A,B,C,D);
    N1=[-2,-3];C1=-N1*C;D1=-N1*D;
    nw=`length`_(reject);nu=`size`_(Sys('B'),2)-nw;
    ny=`size`_(Sys('C'),1);nz=`size`_(C1,1);
    [UIobs,J,N]=ui_observer(Sys,reject,C1,D1);
    
    W=[`zeros`_(nu,nw),`eye`_(nu,nu);Sys];UIobsW=UIobs*W;   
    //(w,u) --> z=UIobs*[0,I;Sys](w,u)
    `clean`_(`ss2tf`_(UIobsW));
    wu_to_z=`syslin`_('c',A,B,C1,D1);`clean`_(`ss2tf`_(wu_to_z));
    `clean`_(`ss2tf`_(wu_to_z)-`ss2tf`_(UIobsW),1.d-7)
    /////2nd example//////
    nx=2;ny=3;nwu=2;Sys=`ssrand`_(ny,nwu,nx);
    C1=`rand`_(1,nx);D1=[0,1];
    UIobs=ui_observer(Sys,1,C1,D1);




See Also
~~~~~~~~


+ `cainv`_ Dual of abinv
+ `ddp`_ disturbance decoupling
+ `abinv`_ AB invariant subspace


.. _cainv: cainv.html
.. _ddp: ddp.html
.. _abinv: abinv.html


