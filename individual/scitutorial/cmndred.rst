


cmndred
=======

common denominator form



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [n,d]=cmndred(num,den)




Arguments
~~~~~~~~~

:num, den two polynomial matrices of same dimensions
:



Description
~~~~~~~~~~~

`[n,d]=cmndred(num,den)` computes a polynomial matrix `n` and a common
denominator polynomial `d` such that:

`n/d=num./den`

The rational matrix defined by `num./den` is `n/d`



See Also
~~~~~~~~


+ `simp`_ rational simplification
+ `clean`_ cleans matrices (round to zero small entries)


.. _simp: simp.html
.. _clean: clean.html


