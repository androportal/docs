


pfss
====

partial fraction decomposition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    elts=pfss(Sl)
    elts=pfss(Sl,rmax)
    elts=pfss(Sl,cord)
    elts=pfss(Sl,rmax,cord)




Arguments
~~~~~~~~~

:Sl A linear dynamical system in state-space or transfer function
  representation (see `syslin`_).
: :rmax A real number controlling the conditioning of block
  diagonalization (see `bdiag`_).
: :cord A character string with possible values `'c'` or `'d'`.
:



Description
~~~~~~~~~~~

Partial fraction decomposition of the linear system `Sl`.

`elts` is the list of linear systems which add up to `Sl` i.e.
`elts=list(S1,S2,S3,...,Sn)` with:

`Sl = S1 + S2 +... +Sn`.

Each `Si` contains some poles of `` Saccording to the block-
diagonalization of the `A` matrix of `S`.

For non proper systems the polynomial part of `Sl` is put in the last
entry of `elts`.

If `Sl` is given in transfer form, it is first converted into state-
space by `tf2ss`_ and each subsystem `Si` is then converted in
transfer form by `ss2tf`_.

The A matrix is of the state-space is put into block diagonal form by
function `bdiag`_. The optional parameter `rmax` is sent to `bdiag`,
`rmax` should be set to a large number to enforce block-
diagonalization.

If the optional flag `cord='c'` is given the elements in `elts` are
sorted according to the real part (resp. magnitude if `cord='d'`) of
the eigenvalues of A matrices.



Examples
~~~~~~~~


::

    W=`ssrand`_(1,1,6);
    elts=pfss(W); 
    W1=0;for k=1:`size`_(elts), W1=W1+`ss2tf`_(elts(k));end
    `clean`_(`ss2tf`_(W)-W1)



::

    num=22801+4406.18*s+382.37*s^2+21.02*s^3+s^4;
    den=22952.25+4117.77*s+490.63*s^2+33.06*s^3+s^4
    h2=`syslin`_('c',num/den);




See Also
~~~~~~~~


+ `pbig`_ eigen-projection
+ `bdiag`_ block diagonalization, generalized eigenvectors
+ `coffg`_ inverse of polynomial matrix
+ `dtsi`_ Continuous time dynamical systems stable anti-stable
  decomposition


.. _coffg: coffg.html
.. _ss2tf: ss2tf.html
.. _pbig: pbig.html
.. _syslin: syslin.html
.. _dtsi: dtsi.html
.. _tf2ss: tf2ss.html
.. _bdiag: bdiag.html


