


mtlb_isa
========

Matlab isa emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab `isa` but some
equivalent expressions can be used when the object "class" exists in
Scilab.

The function `mtlb_isa(OBJ,class)` is used by `mfile2sci` to replace
`isa(OBJ,class)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_isa` calls:


+ If `class` is equal to "logical", `mtlb_isa(OBJ,class)` may be
  replaced by `type(OBJ)==4`
+ If `class` is equal to "char", `mtlb_isa(OBJ,class)` may be replaced
  by `type(OBJ)==10`
+ If `class` is equal to "numeric", `mtlb_isa(OBJ,class)` may be
  replaced by `or(type(OBJ)==[1,5,8])`
+ If `class` is equal to "intX" (X being equal to 8, 16, or 32),
  `mtlb_isa(OBJ,class)` may be replaced by `typeof(OBJ)=="intX"`
+ If `class` is equal to "uintX" (X being equal to 8, 16, or 32),
  `mtlb_isa(OBJ,class)` may be replaced by `typeof(OBJ)=="uintX"`
+ If `class` is equal to "single", `mtlb_isa(OBJ,class)` may be
  replaced by `type(OBJ)==1`
+ If `class` is equal to "double", `mtlb_isa(OBJ,class)` may be
  replaced by `type(OBJ)==1`
+ If `class` is equal to "cell", `mtlb_isa(OBJ,class)` may be replaced
  by `typeof(OBJ)=="ce"`
+ If `class` is equal to "struct", `mtlb_isa(OBJ,class)` may be
  replaced by `typeof(OBJ)=="st"`
+ If `class` is equal to "function_handle", `mtlb_isa(OBJ,class)` may
  be replaced by `type(OBJ)==13`
+ If `class` is equal to "sparse", `mtlb_isa(OBJ,class)` may be
  replaced by `type(OBJ)==5`
+ If `class` is equal to "lti", `mtlb_isa(OBJ,class)` may be replaced
  by `typeof(OBJ)=="state-space"`


Caution: `mtlb_isa` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `type`_ Returns the type of a variable
+ `typeof`_ object type


.. _type: type.html
.. _typeof: typeof.html


