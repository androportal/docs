


cotd
====

element-wise cotangent function, argument in degree



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=cotd(x)




Arguments
~~~~~~~~~

:x Real array.
: :y Real array with same dimensions as `x`.
:



Description
~~~~~~~~~~~

The entries of `y` are the cotangents of the corresponding entries of
`x` supposed to be given in degree. `t=cos(x)./sin(x)`. For entries
equal to `n*180` with `n` integers the results are infinite, whereas
`cotg(n*%pi)` is large but finite because `%pi` cannot be represented
exactly. For entries equal to `n*90` with `n` integers and odd the
results are exactly 0.



Examples
~~~~~~~~


::

    x=[30 45 60 90];
    cotd(x)




See Also
~~~~~~~~


+ `cotg`_ cotangent


.. _cotg: cotg.html


