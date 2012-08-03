====
"mtlb_fscanf"
====

M2SCI function Last update : 28/07/2004
**mtlb_fscanf** - Matlab fscanf emulation function



Description
~~~~~~~~~~~

There is no Scilab exact equivalent for Matlab **fscanf** . Scilab
**mfscanf** and Matlab **fscanf** behave differently in many cases,
but they are equivalents in some cases.

The function **mtlb_fscanf(varargin)** is used by **mfile2sci** to
replace **fscanf** . This function will determine the correct semantic
at run time. It is sometimes possible to replace calls to
**mtlb_fscanf** by calls to ` **mfscanf** `_.

Caution: **mtlb_fscanf** has not to be used for hand coded functions.



See Also
~~~~~~~~

` **mfscanf** `_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./mtlb/../fileio/mfscanf.htm


