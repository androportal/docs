


mtlb_fread
==========

Matlab fread emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent for Matlab `fread`. Scilab `mget` and
Matlab `fread` behave differently in many cases, but they are
equivalents in some cases.

The function `mtlb_fread(varargin)` is used by `mfile2sci` to replace
`fread`. This function will determine the correct semantic at run
time. It is sometimes possible to replace calls to `mtlb_fread` by
calls to `mget`_.

Caution: `mtlb_fread` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `mget`_ reads byte or word in a given binary format and converts to
  a double type


.. _mget: mget.html


