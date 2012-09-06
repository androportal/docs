


mtlb_isletter
=============

Matlab isletter emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab `isletter` and
equivalent instructions are quite ugly, so `mfile2sci` uses
`mtlb_isletter(A)` to replace `isletter(A)`. If you want to have a
more efficient code it is possible to replace `mtlb_isletter` calls:


+ If `A` is not a character string `tf = mtlb_isletter(A)` may be
  replaced by `tf = zeros(A)`
+ If `A` is a character string `tf = mtlb_isletter(A)` may be replaced
  by `tf =
  (asciimat(A)>=65&asciimat(A)<=90)|(asciimat(A)>=97&asciimat(A)<=122)`


Caution: `mtlb_isletter` has not to be used for hand coded functions.



