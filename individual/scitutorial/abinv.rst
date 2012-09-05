


abinv
=====

AB invariant subspace



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X,dims,F,U,k,Z]=abinv(Sys,alpha,beta,flag)




Arguments
~~~~~~~~~

:Sys `syslin` list containing the matrices `[A,B,C,D]`.
: :alpha (optional) real number or vector (possibly complex, location
  of closed loop poles)
: :beta (optional) real number or vector (possibly complex, location
  of closed loop poles)
: :flag (optional) character string `'ge'` (default) or `'st'` or
  `'pp'`
: :X orthogonal matrix of size nx (dim of state space).
: :dims integer row vector `dims=[dimR,dimVg,dimV,noc,nos]` with
  `dimR<=dimVg<=dimV<=noc<=nos`. If `flag='st'`, (resp. `'pp'`), `dims`
  has 4 (resp. 3) components.
: :F real matrix (state feedback)
: :k integer (normal rank of `Sys`)
: :Z non-singular linear system ( `syslin` list)
:



Description
~~~~~~~~~~~

Output nulling subspace (maximal unobservable subspace) for `Sys` =
linear system defined by a syslin list containing the matrices
[A,B,C,D] of `Sys`. The vector `dims=[dimR,dimVg,dimV,noc,nos]` gives
the dimensions of subspaces defined as columns of `X` according to
partition given below. The `dimV` first columns of `X` i.e
`V=X(:,1:dimV)`, span the AB-invariant subspace of `Sys` i.e the
unobservable subspace of `(A+B*F,C+D*F)`. ( `dimV=nx` iff
`C^(-1)(D)=X`).

The `dimR` first columns of `X` i.e. `R=X(:,1:dimR)` spans the
controllable part of `Sys` in `V`, `(dimR<=dimV)`. ( `dimR=0` for a
left invertible system). `R` is the maximal controllability subspace
of `Sys` in `kernel(C)`.

The `dimVg` first columns of `X` spans `Vg`=maximal AB-stabilizable
subspace of `Sys`. `(dimR<=dimVg<=dimV)`.

`F` is a decoupling feedback: for `X=[V,X2] (X2=X(:,dimV+1:nx))` one
has `X2'*(A+B*F)*V=0 and (C+D*F)*V=0`.

The zeros od `Sys` are given by : `X0=X(:,dimR+1:dimV);
spec(X0'*(A+B*F)*X0)` i.e. there are `dimV-dimR` closed-loop fixed
modes.

If the optional parameter `alpha` is given as input, the `dimR`
controllable modes of `(A+BF)` in `V` are set to `alpha` (or to
`[alpha(1), alpha(2), ...]`. ( `alpha` can be a vector (real or
complex pairs) or a (real) number). Default value `alpha=-1`.

If the optional real parameter `beta` is given as input, the `noc-
dimV` controllable modes of `(A+BF)` "outside" `V` are set to `beta`
(or `[beta(1),beta(2),...]`). Default value `beta=-1`.

In the `X,U` bases, the matrices `[X'*(A+B*F)*X,X'*B*U;(C+D*F)*X,D*U]`
are displayed as follows:


::

    [A11,*,*,*,*,*]  [B11 * ]
    [0,A22,*,*,*,*]  [0   * ]
    [0,0,A33,*,*,*]  [0   * ]
    [0,0,0,A44,*,*]  [0  B42]
    [0,0,0,0,A55,*]  [0   0 ]
    [0,0,0,0,0,A66]  [0   0 ]
    
    [0,0,0,*,*,*]    [0  D2]


where the X-partitioning is defined by `dims` and the U-partitioning
is defined by `k`.

`A11` is `(dimR x dimR)` and has its eigenvalues set to `alpha(i)'s`.
The pair `(A11,B11)` is controllable and `B11` has `nu-k` columns.
`A22` is a stable `(dimVg-dimR x dimVg-dimR)` matrix. `A33` is an
unstable `(dimV-dimVg x dimV-dimVg)` matrix (see `st_ility`).

`A44` is `(noc-dimV x noc-dimV)` and has its eigenvalues set to
`beta(i)'s`. The pair `(A44,B42)` is controllable. `A55` is a stable
`(nos-noc x nos-noc)` matrix. `A66` is an unstable `(nx-nos x nx-nos)`
matrix (see `st_ility`).

`Z` is a column compression of `Sys` and `k` is the normal rank of
`Sys` i.e `Sys*Z` is a column-compressed linear system. `k` is the
column dimensions of `B42,B52,B62` and `D2`. `[B42;B52;B62;D2]` is
full column rank and has rank `k`.

If `flag='st'` is given, a five blocks partition of the matrices is
returned and `dims` has four components. If `flag='pp'` is given a
four blocks partition is returned. In case `flag='ge'` one has
`dims=[dimR,dimVg,dimV,dimV+nc2,dimV+ns2]` where `nc2` (resp. `ns2`)
is the dimension of the controllable (resp. stabilizable) pair
`(A44,B42)` (resp. ( `[A44,*;0,A55],[B42;0])`). In case `flag='st'`
one has `dims=[dimR,dimVg,dimVg+nc,dimVg+ns]` and in case `flag='pp'`
one has `dims=[dimR,dimR+nc,dimR+ns]`. `nc` (resp. `ns`) is here the
dimension of the controllable (resp. stabilizable) subspace of the
blocks 3 to 6 (resp. 2 to 6).

This function can be used for the (exact) disturbance decoupling
problem.


::

    DDPS:
       Find u=Fx+Rd=[F,R]*[x;d] which rejects Q*d `and`_ stabilizes the plant:
    
        xdot = Ax+Bu+Qd
           y = Cx+Du+Td
    
    DDPS has a solution if Im(Q) is included in Vg + Im(B) `and`_ stabilizability
    assumption is satisfied. 
    Let G=(X(:,dimVg+1:$))'= left annihilator of Vg i.e. G*Vg=0;
    B2=G*B; Q2=G*Q; DDPS solvable iff [B2;D]*R + [Q2;T] =0 has a solution.
    The pair F,R  is the solution  (with F=output of abinv).
    Im(Q2) is in Im(B2) means row-compression of B2=>row-compression of Q2
    Then C*[(sI-A-B*F)^(-1)+D]*(Q+B*R) =0   (<=>G*(Q+B*R)=0)




Examples
~~~~~~~~


::

    nu=3;ny=4;nx=7;
    nrt=2;ngt=3;ng0=3;nvt=5;rk=2;
    flag=`list`_('on',nrt,ngt,ng0,nvt,rk);
    Sys=`ssrand`_(ny,nu,nx,flag);my_alpha=-1;my_beta=-2;
    [X,dims,F,U,k,Z]=abinv(Sys,my_alpha,my_beta);
    [A,B,C,D]=`abcd`_(Sys);dimV=dims(3);dimR=dims(1);
    V=X(:,1:dimV);X2=X(:,dimV+1:nx);
    X2'*(A+B*F)*V
    (C+D*F)*V
    X0=X(:,dimR+1:dimV); `spec`_(X0'*(A+B*F)*X0)
    `trzeros`_(Sys)
    `spec`_(A+B*F)   //nr=2 evals at -1 and noc-dimV=2 evals at -2.
    `clean`_(`ss2tf`_(Sys*Z))
    
    // 2nd Example
    nx=6;ny=3;nu=2;
    A=`diag`_(1:6);A(2,2)=-7;A(5,5)=-9;B=[1,2;0,3;0,4;0,5;0,0;0,0];
    C=[`zeros`_(ny,ny),`eye`_(ny,ny)];D=[0,1;0,2;0,3];
    sl=`syslin`_('c',A,B,C,D);//sl=ss2ss(sl,rand(6,6))*rand(2,2);
    [A,B,C,D]=`abcd`_(sl);  //The matrices of sl.
    my_alpha=-1;my_beta=-2;
    [X,dims,F,U,k,Z]=abinv(sl,my_alpha,my_beta);dimVg=dims(2);
    `clean`_(X'*(A+B*F)*X)
    `clean`_(X'*B*U)
    `clean`_((C+D*F)*X)
    `clean`_(D*U)
    G=(X(:,dimVg+1:$))';
    B2=G*B;nd=3;
    R=`rand`_(nu,nd);Q2T=-[B2;D]*R;
    p=`size`_(G,1);Q2=Q2T(1:p,:);T=Q2T(p+1:$,:);
    Q=G\Q2;   //a valid [Q;T] since 
    [G*B;D]*R + [G*Q;T]  // is zero
    closed=`syslin`_('c',A+B*F,Q+B*R,C+D*F,T+D*R); // closed loop: d-->y
    `ss2tf`_(closed)       // Closed loop is zero
    `spec`_(closed('A'))   //The plant is not stabilizable!
    [ns,nc,W,sl1]=`st_ility`_(sl);
    [A,B,C,D]=`abcd`_(sl1);A=A(1:ns,1:ns);B=B(1:ns,:);C=C(:,1:ns);
    slnew=`syslin`_('c',A,B,C,D);  //Now stabilizable
    //Fnew=stabil(slnew('A'),slnew('B'),-11);
    //slnew('A')=slnew('A')+slnew('B')*Fnew;
    //slnew('C')=slnew('C')+slnew('D')*Fnew;
    [X,dims,F,U,k,Z]=abinv(slnew,my_alpha,my_beta);dimVg=dims(2);
    [A,B,C,D]=`abcd`_(slnew);
    G=(X(:,dimVg+1:$))';
    B2=G*B;nd=3;
    R=`rand`_(nu,nd);Q2T=-[B2;D]*R;
    p=`size`_(G,1);Q2=Q2T(1:p,:);T=Q2T(p+1:$,:);
    Q=G\Q2;   //a valid [Q;T] since 
    [G*B;D]*R + [G*Q;T]  // is zero
    closed=`syslin`_('c',A+B*F,Q+B*R,C+D*F,T+D*R); // closed loop: d-->y
    `ss2tf`_(closed)       // Closed loop is zero
    `spec`_(closed('A'))




See Also
~~~~~~~~


+ `cainv`_ Dual of abinv
+ `st_ility`_ stabilizability test
+ `ssrand`_ random system generator
+ `ss2ss`_ state-space to state-space conversion, feedback, injection
+ `ddp`_ disturbance decoupling


.. _st_ility: st_ility.html
.. _ssrand: ssrand.html
.. _cainv: cainv.html
.. _ss2ss: ss2ss.html
.. _ddp: ddp.html


