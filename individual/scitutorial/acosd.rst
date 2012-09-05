


acosd
=====

element wise cosine inverse, result in degree.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=acosd(x)




Arguments
~~~~~~~~~

:x Real or complex vector or matrix.
: :t Real or complex vector or matrix.
:



Description
~~~~~~~~~~~

The components of `t` are cosine inverse, in degree, of the
corresponding entries of `x` (t=acos(x)*180/%pi). For real data in
`[-1, 1]`, the results are real in `[0 180]`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=[-1 0 1 `sqrt`_(2)/2 -`sqrt`_(2)/2 `sqrt`_(3)/2 -`sqrt`_(3)/2];
    acosd(x)




See Also
~~~~~~~~


+ `acos`_ element wise cosine inverse (radians) `cos`_ cosine function


.. _cos: cos.html
.. _acos: acos.html


