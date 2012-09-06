


nfreq
=====

frequence of the values in a vector or matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    m=nfreq(x)




Arguments
~~~~~~~~~

:x real or complex vector or matrix
:



Description
~~~~~~~~~~~

Frequence of the values in a real or complex vector or a real or
complex matrix `x`.

For a real or complex vector or a real or complex matrix `x`,
`m=freq(x)` returns in the first column of the `size(x,'*')x2` matrix
`m` the values of `x` and in the second column of this matrix the
frequences of the corresponding values.

Note that the `tabul`_ function is more efficient, applies also to
vector of strings and returns a sorted `m`.



Examples
~~~~~~~~


::

    x=[2 8 0 3 7 6 8 7 9 1]
    m=nfreq(x)




See Also
~~~~~~~~


+ `tabul`_ frequency of values of a matrix or vector
+ `dsearch`_ search in ordered sets
+ `histplot`_ plot a histogram


.. _tabul: tabul.html
.. _histplot: histplot.html
.. _dsearch: dsearch.html


