


nthroot
=======

Real nth root of real numbers



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=ntrhoot(x,n)




Arguments
~~~~~~~~~

:x real scalar or vector/matrix
:

:n real scalar
:



Description
~~~~~~~~~~~

`nthroot(x,n)` is the real vector/matrix of the nth root of the `x`
elements. If `x` has negative elements, `n` must be an odd.



Examples
~~~~~~~~


::

    nthroot(2,3)    
    nthroot(-2,3)    
    nthroot(-2,-3)
    nthroot(2,-3)




See Also
~~~~~~~~


+ `hat`_ (^) exponentiation
+ `sqrt`_ square root
+ `sqrtm`_ matrix square root


.. _sqrt: sqrt.html
.. _hat: hat.html
.. _sqrtm: sqrtm.html


