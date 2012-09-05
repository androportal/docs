


mtlb_dir
========

Matlab dir emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `dir` behave differently:


+ When result is stored in a variable: Matlab `dir` returns a
  structure but Scilab `dir` returns a 'dir' tlist, so data can not be
  extracted in the same way.


The function `mtlb_dir([path])` is used by `mfile2sci` to replace
`dir([path])` when output is stored in a variable. There is no
replacement possibility for it, else (when `mtlb_dir` is replaced by
`dir`) data can not be extracted like in Matlab. For example, Scilab
equivalent for Matlab `L=dir;file_name=L(1).name;` is
`L=dir();file_name=L.name(1);`.

Caution: `mtlb_dir` has not to be used for hand coded functions.



