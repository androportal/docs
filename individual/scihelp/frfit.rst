


frfit
=====

frequency response fit



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sys=frfit(w,fresp,order)
    [num,den]=frfit(w,fresp,order)
    sys=frfit(w,fresp,order,weight)
    [num,den]=frfit(w,fresp,order,weight)




Arguments
~~~~~~~~~

:w positive real vector of frequencies (Hz)
: :fresp complex vector of frequency responses (same size as `w`)
: :order integer (required order, degree of `den`)
: :weight positive real vector (default value `ones(w)`).
: :num,den stable polynomials
:



Description
~~~~~~~~~~~

`sys=frfit(w,fresp,order,weight)` returns a bi-stable transfer
function `G(s)=sys=num/den`, of of given `order` such that its
frequency response `G(w(i))` matches `fresp(i)`, i.e.
`freq(num,den,%i*w)` should be close to `fresp`. `weight(i)` is the
weight given to `w(i)`.



Examples
~~~~~~~~


::

    w=0.01:0.01:2;s=`poly`_(0,'s');
    G=`syslin`_('c',2*(s^2+0.1*s+2), (s^2+s+1)*(s^2+0.3*s+1));
    fresp=`repfreq`_(G,w);
    Gid=frfit(w,fresp,4);
    frespfit=`repfreq`_(Gid,w);
    `bode`_(w,[fresp;frespfit])




See Also
~~~~~~~~


+ `frep2tf`_ transfer function realization from frequency response
+ `factors`_ numeric real factorization
+ `cepstrum`_ cepstrum calculation
+ `mrfit`_ frequency response fit
+ `freq`_ frequency response
+ `calfrq`_ frequency response discretization


.. _freq: freq.html
.. _cepstrum: cepstrum.html
.. _factors: factors.html
.. _frep2tf: frep2tf.html
.. _mrfit: mrfit.html
.. _calfrq: calfrq.html


