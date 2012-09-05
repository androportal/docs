


feedback
========

feedback operation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Sl=Sl1/.Sl2




Arguments
~~~~~~~~~

:Sl1,Sl2 linear systems ( `syslin` list) in state-space or transfer
  form, or ordinary gain matrices.
: :Sl linear system ( `syslin` list) in state-space or transfer form
:



Description
~~~~~~~~~~~

The feedback operation is denoted by `/.` (slashdot). This command
returns `Sl=Sl1*(I+Sl2*Sl1)^-1`, i.e the (negative) feedback of `Sl1`
and `Sl2`. `Sl` is the transfer `v -> y` for `y = Sl1 u`, `u = v - Sl2
y`.

The result is the same as `Sl=LFT([0,I;I,-Sl2],Sl1)`.

Caution: do not use with decimal point (e.g. `1/.1` is ambiguous!)



Examples
~~~~~~~~


::

    S1=`ssrand`_(2,2,3);S2=`ssrand`_(2,2,2);
    W=S1/.S2;
    `ss2tf`_(S1/.S2)
    //Same operation by LFT:
    `ss2tf`_(`lft`_([`zeros`_(2,2),`eye`_(2,2);`eye`_(2,2),-S2],S1))
    //Other approach: with constant feedback
    BigS=`sysdiag`_(S1,S2); F=[`zeros`_(2,2),`eye`_(2,2);-`eye`_(2,2),`zeros`_(2,2)];
    Bigclosed=BigS/.F;
    W1=Bigclosed(1:2,1:2);   //W1=W (in state-space).
    `ss2tf`_(W1)
    //Inverting
    `ss2tf`_(S1*`inv`_(`eye`_()+S2*S1))




See Also
~~~~~~~~


+ `lft`_ linear fractional transformation
+ `sysdiag`_ block diagonal system connection
+ `augment`_ augmented plant
+ `obscont`_ observer based controller


.. _augment: augment.html
.. _sysdiag: sysdiag.html
.. _obscont: obscont.html
.. _lft: lft.html


