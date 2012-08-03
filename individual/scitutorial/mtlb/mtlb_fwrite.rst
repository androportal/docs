====
"mtlb_fwrite"
====

M2SCI function Last update : 28/07/2004
**mtlb_fwrite** - Matlab fwrite emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent for Matlab **fwrite** . Scilab **mput**
and Matlab **fwrite** behave differently in many cases, but they are
equivalents in some cases.

The function **mtlb_fwrite(varargin)** is used by **mfile2sci** to
replace **fwrite** . This function will determine the correct semantic
at run time. It is sometimes possible to replace calls to
**mtlb_fwrite** by calls to ` **mput** `_.

Caution: **mtlb_fwrite** has not to be used for hand coded functions.



See Also
~~~~~~~~

` **mput** `_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./mtlb/../fileio/mput.htm


