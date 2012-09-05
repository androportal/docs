


trzeros
=======

transmission zeros and normal rank



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [tr]=trzeros(Sl)
    [nt,dt,rk]=trzeros(Sl)




Arguments
~~~~~~~~~

:Sl linear system ( `syslin` list)
: :nt complex vectors
: :dt real vector
: :rk integer (normal rank of Sl)
:



Description
~~~~~~~~~~~

Called with one output argument, `trzeros(Sl)` returns the
transmission zeros of the linear system `Sl`.

`Sl` may have a polynomial (but square) `D` matrix.

Called with 2 output arguments, `trzeros` returns the transmission
zeros of the linear system `Sl` as `tr=nt./dt`;

(Note that some components of `dt` may be zeros)

Called with 3 output arguments, `rk` is the normal rank of `Sl`

Transfer matrices are converted to state-space.

If `Sl` is a (square) polynomial matrix `trzeros` returns the roots of
its determinant.

For usual state-space system `trzeros` uses the state-space algorithm
of Emami-Naeni and Van Dooren.

If `D` is invertible the transmission zeros are the eigenvalues of the
" `A` matrix" of the inverse system : `A - B*inv(D)*C`;

If `C*B` is invertible the transmission zeros are the eigenvalues of
`N*A*M` where `M*N` is a full rank factorization of
`eye(A)-B*inv(C*B)*C`;

For systems with a polynomial `D` matrix zeros are calculated as the
roots of the determinant of the system matrix.

Caution: the computed zeros are not always reliable, in particular in
case of repeated zeros.



Examples
~~~~~~~~


::

    W1=`ssrand`_(2,2,5);trzeros(W1)    //call trzeros
    `roots`_(`det`_(`systmat`_(W1)))         //roots of det(system matrix)
    s=`poly`_(0,'s');W=[1/(s+1);1/(s-2)];W2=(s-3)*W*W';[nt,dt,rk]=trzeros(W2);
    St=`systmat`_(`tf2ss`_(W2));[Q,Z,Qd,Zd,numbeps,numbeta]=`kroneck`_(St);
    St1=Q*St*Z;rowf=(Qd(1)+Qd(2)+1):(Qd(1)+Qd(2)+Qd(3));
    colf=(Zd(1)+Zd(2)+1):(Zd(1)+Zd(2)+Zd(3));
    `roots`_(St1(rowf,colf)), nt./dt     //By Kronecker form




See Also
~~~~~~~~


+ `gspec`_ eigenvalues of matrix pencil (obsolete)
+ `kroneck`_ Kronecker form of matrix pencil


.. _kroneck: kroneck.html
.. _gspec: gspec.html


