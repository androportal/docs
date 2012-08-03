====
"lqg"
====

Scilab Function Last update : April 1993
**lqg** - LQG compensator



Calling Sequence
~~~~~~~~~~~~~~~~

[K]=lqg(P,r)




Parameters
~~~~~~~~~~


+ **P** : **syslin** list (augmented plant) in state-space form
+ **r** : 1x2 row vector = (number of measurements, number of inputs)
  (dimension of the 2,2 part of **P** )
+ **K** : **syslin** list (controller)




Description
~~~~~~~~~~~

**lqg** computes the linear optimal LQG (H2) controller for the
"augmented" plant **P=syslin('c',A,B,C,D)** (continuous time) or
**P=syslin('d',A,B,C,D)** (discrete time).

The function **lqg2stan** returns **P** and **r** given the nominal
plant, weighting terms and variances of noises.

**K** is given by the following ABCD matrices:
**[A+B*Kc+Kf*C+Kf*D*Kc,-Kf,Kc,0]** where **Kc=lqr(P12)** is the
controller gain and **Kf=lqe(P21)** is the filter gain. See example in
**lqg2stan** .



See Also
~~~~~~~~

` **lqg2stan** `_,` **lqr** `_,` **lqe** `_,` **h_inf** `_,`
**obscont** `_,



Author
~~~~~~

F.D.

.. _
      : ://./control/../robust/h_inf.htm
.. _
      : ://./control/lqg2stan.htm
.. _
      : ://./control/lqr.htm
.. _
      : ://./control/obscont.htm
.. _
      : ://./control/lqe.htm


