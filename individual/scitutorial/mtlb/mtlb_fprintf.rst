====
"mtlb_fprintf"
====

M2SCI function Last update : 28/07/2004
**mtlb_fprintf** - Matlab fprintf emulation function



Description
~~~~~~~~~~~

There is no Scilab exact equivalent for Matlab **fprintf** . Scilab
**mfprintf** and Matlab **fprintf** behave differently in many cases,
but they are equivalents in some cases.

The function **mtlb_fprintf(varargin)** is used by **mfile2sci** to
replace **fprintf** . This function will determine the correct
semantic at run time. It is sometimes possible to replace calls to
**mtlb_fprintf** by calls to ` **mfprintf** `_.

Caution: **mtlb_fprintf** has not to be used for hand coded functions.



See Also
~~~~~~~~

` **mfprintf** `_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./mtlb/../fileio/mprintf.htm


