


invr
====

inversion of (rational) matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    F = invr(H)




Arguments
~~~~~~~~~

:H polynomial or rational matrix
: :F polynomial or rational matrix
:



Description
~~~~~~~~~~~

If `H` is a polynomial or rational function matrix, `invr` computes
`H^(-1)` using Leverrier's algorithm (see function code)



Examples
~~~~~~~~


::

    s=`poly`_(0,'s')
    H=[s,s*s+2;1-s,1+s]; invr(H)
    [Num,den]=`coffg`_(H);Num/den
    H=[1/s,(s+1);1/(s+2),(s+3)/s];invr(H)




See Also
~~~~~~~~


+ `glever`_ inverse of matrix pencil
+ `coffg`_ inverse of polynomial matrix
+ `inv`_ matrix inverse


.. _coffg: coffg.html
.. _glever: glever.html
.. _inv: inv.html


