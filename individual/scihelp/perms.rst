


perms
=====

all permutations of vector components



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=perms(x)




Arguments
~~~~~~~~~

:x scalar or vector
: :y matrix
:



Description
~~~~~~~~~~~

Given a vector `x` of length `n`, `perms` returns all the permutations
of the `n` components of `x` (i.e `n!` permutations). The size of `y`
is `n!-by-n.`



Examples
~~~~~~~~


::

    x=[4, 7, 10]
    y=perms(x)
    x=[1, 5, 2, 5]
    y=perms(x)




