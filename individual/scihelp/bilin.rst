


bilin
=====

general bilinear transform



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [sl1]=bilin(sl,v)




Arguments
~~~~~~~~~

:sl,sl1 linear systems ( `syslin` lists)
: :v real vector with 4 entries ( `v=[a,b,c,d]`)
:



Description
~~~~~~~~~~~

Given a linear system in state space form, `sl=syslin(dom,A,B,C,D)` (
`syslin` list), `sl1=bilin(sl,v)` returns in `sl1` a linear system
with matrices `[A1,B1,C1,D1]` such that the transfer function
`H1(s)=C1*inv(s*eye()-A1)*B1+D1` is obtained from
`H(z)=C*inv(z*eye()-A)*B+D` by replacing `z` by `z=(a*s+b)/(c*s+d)`.
One has `w=bilin(bilin(w,[a,b,c,d]),[d,-b,-c,a])`



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');z=`poly`_(0,'z');
    w=`ssrand`_(1,1,3);
    wtf=`ss2tf`_(w);v=[2,3,-1,4];a=v(1);b=v(2);c=v(3);d=v(4);
    [`horner`_(wtf,(a*z+b)/(c*z+d)),`ss2tf`_(bilin(w,[a,b,c,d]))]
    `clean`_(`ss2tf`_(bilin(bilin(w,[a,b,c,d]),[d,-b,-c,a]))-wtf)




See Also
~~~~~~~~


+ `horner`_ polynomial/rational evaluation
+ `cls2dls`_ bilinear transform


.. _cls2dls: cls2dls.html
.. _horner: horner.html


