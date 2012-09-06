


moment
======

non central moments of all orders



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mom=moment(x,ord)
    mom=moment(x,ord,'r') or mom=moment(x,ord,1)
    mom=moment(x,ord,'c') or mom=moment(x,ord,2)




Arguments
~~~~~~~~~

:x real or complex vector or matrix
: :ord positive integer
:



Description
~~~~~~~~~~~

moment `(x,ord)` is the non central moment or order ord of the
elements of `x`.

If a third argument of type string `'r'` (or `1`) or `'c'` (or `2`) is
used, we get in the first case, a row vector `mom` such that `mom(j)`
contains the non central moment of order `ord` of the `j` column of
`x`. `moment(x,ord,'c')` is used in the same way for the non central
moments in the rows.



Examples
~~~~~~~~


::

    x=[0.2113249 0.0002211 0.6653811;0.7560439 0.3303271 0.6283918]
    mom=moment(x,3)
    mom=moment(x,2,'r')
    mom=moment(x,3,'c')




Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



