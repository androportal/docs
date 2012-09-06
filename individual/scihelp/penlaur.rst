


penlaur
=======

Laurent coefficients of matrix pencil



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Si,Pi,Di,order]=penlaur(Fs)
    [Si,Pi,Di,order]=penlaur(E,A)




Arguments
~~~~~~~~~

:Fs a regular pencil `s*E-A`
: :E, A two real square matrices
: :Si,Pi,Di three real square matrices
: :order integer
:



Description
~~~~~~~~~~~

`penlaur` computes the first Laurent coefficients of `(s*E-A)^-1` at
infinity.

`(s*E-A)^-1 = ... + Si/s - Pi - s*Di + ...` at `s` = infinity.

`order` = order of the singularity (order=index-1).

The matrix pencil `Fs=s*E-A` should be invertible.

For a index-zero pencil, `Pi, Di,...` are zero and `Si=inv(E)`.

For a index-one pencil (order=0), `Di` =0.

For higher-index pencils, the terms `-s^2 Di(2), -s^3 Di(3),...` are
given by:

`Di(2)=Di*A*Di`, `Di(3)=Di*A*Di*A*Di` (up to `Di(order)`).



Remark
~~~~~~

Experimental version: troubles when bad conditioning of `so*E-A`



Examples
~~~~~~~~


::

    F=`randpencil`_([],[1,2],[1,2,3],[]);
    F=`rand`_(6,6)*F*`rand`_(6,6);[E,A]=`pen2ea`_(F);
    [Si,Pi,Di]=penlaur(F);
    [Bfs,Bis,chis]=`glever`_(F);
    `norm`_(`coeff`_(Bis,1)-Di,1)




See Also
~~~~~~~~


+ `glever`_ inverse of matrix pencil
+ `pencan`_ canonical form of matrix pencil
+ `rowshuff`_ shuffle algorithm


.. _pencan: pencan.html
.. _glever: glever.html
.. _rowshuff: rowshuff.html


