


pencan
======

canonical form of matrix pencil



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Q,M,i1]=pencan(Fs)
    [Q,M,i1]=pencan(E,A)




Arguments
~~~~~~~~~

:Fs a regular pencil `s*E-A`
: :E,A two real square matrices
: :Q,M two non-singular real matrices
: :i1 integer
:



Description
~~~~~~~~~~~

Given the regular pencil `Fs=s*E-A`, `pencan` returns matrices `Q` and
`M` such than `M*(s*E-A)*Q` is in "canonical" form.

`M*E*Q` is a block matrix


::

    [I,0;
     0,N]


with `N` nilpotent and `i1` = size of the `I` matrix above.

`M*A*Q` is a block matrix:


::

    [Ar,0;
     0,I]




Examples
~~~~~~~~


::

    F=`randpencil`_([],[1,2],[1,2,3],[]);
    F=`rand`_(6,6)*F*`rand`_(6,6);
    [Q,M,i1]=pencan(F);
    W=`clean`_(M*F*Q)
    `roots`_(`det`_(W(1:i1,1:i1)))
    `det`_(W($-2:$,$-2:$))




See Also
~~~~~~~~


+ `glever`_ inverse of matrix pencil
+ `penlaur`_ Laurent coefficients of matrix pencil
+ `rowshuff`_ shuffle algorithm


.. _rowshuff: rowshuff.html
.. _glever: glever.html
.. _penlaur: penlaur.html


