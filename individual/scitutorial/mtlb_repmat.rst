


mtlb_repmat
===========

Matlab repmat emulation function



Description
~~~~~~~~~~~

Since version 5.3.1, `repmat`_ is available into Scilab.

The function `mtlb_repmat(M,m[,n])` is used by `mfile2sci` to replace
`repmat(M,m[,n])` when it was not possible to know what were the
inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_repmat` calls:


+ If `A` is of Double type and `m` is a scalar, `mtlb_repmat(M,m)` may
  be replaced by `ones(m,m).*.M` and `mtlb_repmat(M,m,n)` may be
  replaced by `ones(m,n).*.M`
+ If `A` is of Boolean type and `m` is a scalar, `mtlb_repmat(M,m)`
  may be replaced by `ones(m,m).*.bool2s(M)` and `mtlb_repmat(M,m,n)`
  may be replaced by `ones(m,n).*.bool2s(M)`
+ If `A` is of String type and `m` is a scalar, `mtlb_repmat(M,m)` may
  be replaced by `asciimat(ones(m,m).*.asciimat(M))` and
  `mtlb_repmat(M,m,n)` may be replaced by
  `asciimat(ones(m,n).*.asciimat(M))`
+ If `A` is of Double type and `m` is a vector, `mtlb_repmat(M,m)` may
  be replaced by `ones(m(1),m(2),...).*.M`
+ If `A` is of Boolean type and `m` is a vector, `mtlb_repmat(M,m)`
  may be replaced by `ones(m(1),m(2),...).*.bool2s(M)`
+ If `A` is of String type and `m` is a vector, `mtlb_repmat(M,m)` may
  be replaced by `asciimat(ones(m(1),m(2),...).*.asciimat(M))`


Caution: `mtlb_repmat` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `ones`_ matrix made of ones
+ `kron`_ Kronecker product (.*.)




History
~~~~~~~
Version Description 5.4.0 mtlb_repmat tagged as obsolete and replaced
by `repmat`_. Will be removed in 5.4.1
.. _repmat: repmat.html
.. _kron: kron.html
.. _ones: ones.html


