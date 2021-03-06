


lft
===

linear fractional transformation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [P1]=lft(P,K)
    [P1]=lft(P,r,K)
    [P1,r1]=lft(P,r,Ps,rs)




Arguments
~~~~~~~~~

:P linear system ( `syslin` list), the ``augmented'' plant, implicitly
  partitioned into four blocks (two input ports and two output ports).
: :K linear system ( `syslin` list), the controller (possibly an
  ordinary gain).
: :r 1x2 row vector, dimension of `P22`
: :Ps linear system ( `syslin` list), implicitly partitioned into four
  blocks (two input ports and two output ports).
: :rs 1x2 row vector, dimension of `Ps22`
:



Description
~~~~~~~~~~~

Linear fractional transform between two standard plants `P` and `Ps`
in state space form or in transfer form ( `syslin` lists).

`r= size(P22) rs=size(P22s)`

`lft(P,r, K)` is the linear fractional transform between `P` and a
controller `K` ( `K` may be a gain or a controller in state space form
or in transfer form);

`lft(P,K)` is `lft(P,r,K)` with `r`=size of `K` transpose;

`P1= P11+P12*K* (I-P22*K)^-1 *P21`

`[P1,r1]=lft(P,r,Ps,rs)` returns the generalized (2 ports) lft of `P`
and `Ps`.

`P1` is the pair two-port interconnected plant and the partition of
`P1` into 4 blocks in given by `r1` which is the dimension of the `22`
block of `P1`.

`P` and `R` can be PSSDs i.e. may admit a polynomial `D` matrix.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    P=[1/s, 1/(s+1); 1/(s+2),2/s]; K= 1/(s-1);
    lft(P,K)
    lft(P,[1,1],K)
    P(1,1)+P(1,2)*K*`inv`_(1-P(2,2)*K)*P(2,1)   //Numerically dangerous!
    `ss2tf`_(lft(`tf2ss`_(P),`tf2ss`_(K)))
    lft(P,-1)
    f=[0,0;0,1];w=P/.f; w(1,1)
    //Improper plant (PID control)
    W=[1,1;1,1/(s^2+0.1*s)];K=1+1/s+s
    lft(W,[1,1],K); `ss2tf`_(lft(`tf2ss`_(W),[1,1],`tf2ss`_(K)))




See Also
~~~~~~~~


+ `sensi`_ sensitivity functions
+ `augment`_ augmented plant
+ `feedback`_ feedback operation
+ `sysdiag`_ block diagonal system connection


.. _sensi: sensi.html
.. _augment: augment.html
.. _sysdiag: sysdiag.html
.. _feedback: feedback.html


