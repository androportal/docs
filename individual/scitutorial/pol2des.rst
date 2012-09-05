


pol2des
=======

polynomial matrix to descriptor form



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [N,B,C]=pol2des(Ds)




Arguments
~~~~~~~~~

:Ds polynomial matrix
: :N, B, C three real matrices
:



Description
~~~~~~~~~~~

Given the polynomial matrix `Ds=D_0 +D_1 s +D_2 s^2 +... +D_k s^k`,
`pol2des` returns three matrices `N, B, C`, with `N` nilpotent such
that:

`Ds = C (s*N-eye())^-1 B`



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    G=[1,s;1+s^2,3*s^3];[N,B,C]=pol2des(G);
    G1=`clean`_(C*`inv`_(s*N-`eye`_())*B),G2=`numer`_(G1)




See Also
~~~~~~~~


+ `ss2des`_ (polynomial) state-space to descriptor form
+ `tf2des`_ transfer function to descriptor


.. _ss2des: ss2des.html
.. _tf2des: tf2des.html


