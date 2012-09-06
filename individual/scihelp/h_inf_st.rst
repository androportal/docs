


h_inf_st
========

static H_infinity problem



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Kopt,gamaopt]=h_inf_stat(D,r)




Arguments
~~~~~~~~~

:D real matrix
: :r 1x2 vector
: :Kopt matrix
:



Description
~~~~~~~~~~~

computes a matrix `Kopt` such that largest singular value of:

`lft(D,r,K)=D11+D12* K*inv(I-D22*K)* D21` is minimal (Static
`H_infinity` four blocks problem).

D is partionned as `D=[D11 D12; D21 D22]` where `size(D22)=r=[r1 r2]`



