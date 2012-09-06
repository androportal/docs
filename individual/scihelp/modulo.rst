


modulo
======

symmetric arithmetic remainder modulo m



pmodulo
=======

positive arithmetic remainder modulo m



Calling Sequence
~~~~~~~~~~~~~~~~


::

    i = modulo(n,m)



::

    i = pmodulo(n,m)




Arguments
~~~~~~~~~

:n real vector or matrix
: :m real vector or matrix
:



Description
~~~~~~~~~~~

`modulo` computes `i = n (modulo m)` i.e. remainder of `n` divided by
`m` ( `n` and `m` are integers).

`i = n - m .* int (n ./ m)`. Here the answer may be negative if `n` or
`m` are negative.

`pmodulo` computes `i = n - m .* floor (n ./ m)` ,the answer is
positive or zero.

`modulo(x,0)` returns an error message: "Division by zero...". With
ieee(2), `modulo(x,0)` returns %nan.

`pmodulo(x,0)` returns an error message: "Division by zero...". With
ieee(2), `pmodulo(x,0)` returns %nan.



Examples
~~~~~~~~


::

    n=[1,2,10,15];m=[2,2,3,5];
    `modulo`_(n,m)
    
    `modulo`_(-3,9)
    pmodulo(-3,9)




