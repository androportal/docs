


sensi
=====

sensitivity functions



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Se,Re,Te]=sensi(G,K)
    [Si,Ri,Ti]=sensi(G,K,flag)




Arguments
~~~~~~~~~

:G standard plant ( `syslin` list)
: :K compensator ( `syslin` list)
: :flag character string `'o'` (default value) or `'i'`
: :Se output sensitivity function `(I+G*K)^-1`
: :Re `K*Se`
: :Te `G*K*Se` (output complementary sensitivity function)
:



Description
~~~~~~~~~~~

`sensi` computes sensitivity functions. If `G` and `K` are given in
state-space form, the systems returned are generically minimal.
Calculation is made by `lft`, e.g., `Se` can be given by the commands
`P = augment(G,'S')`, `Se=lft(P,K)`. If `flag` = `'i'`,
`[Si,Ri,Ti]=sensi(G,K,'i')` returns the input sensitivity functions.


::

    [Se;Re;Te]= [`inv`_(`eye`_()+G*K);K*`inv`_(`eye`_()+G*K);G*K*`inv`_(`eye`_()+G*K)];
    [Si;Ri;Ti]= [`inv`_(`eye`_()+K*G);G*`inv`_(`eye`_()+K*G);K*G*`inv`_(`eye`_()+K*G)];




Examples
~~~~~~~~


::

    G=`ssrand`_(1,1,3);K=`ssrand`_(1,1,3);
    [Se,Re,Te]=sensi(G,K);
    Se1=`inv`_(`eye`_()+G*K);  //Other way to compute
    `ss2tf`_(Se)    //Se seen in transfer form
    `ss2tf`_(Se1)
    `ss2tf`_(Te)
    `ss2tf`_(G*K*Se1)
    [Si,Ri,Ti]=sensi(G,K,'i');
    w1=[`ss2tf`_(Si);`ss2tf`_(Ri);`ss2tf`_(Ti)]
    w2=[`ss2tf`_(`inv`_(`eye`_()+K*G));`ss2tf`_(G*`inv`_(`eye`_()+K*G));`ss2tf`_(K*G*`inv`_(`eye`_()+K*G))];
    `clean`_(w1-w2)




See Also
~~~~~~~~


+ `augment`_ augmented plant
+ `lft`_ linear fractional transformation
+ `h_cl`_ closed loop matrix


.. _augment: augment.html
.. _h_cl: h_cl.html
.. _lft: lft.html


