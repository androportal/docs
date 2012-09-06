


sci_files
=========

How to write conversion functions



Description
~~~~~~~~~~~

To convert calls to Matlab functions, `mfile2sci` uses a function
called `sci_<Matlab_function_name>`. All these functions are defined
in `sci_files` in directory SCI/modules/m2sci/macros/sci_files/. The
set of `sci_files` given in Scilab distribution does not allow to
convert calls to all Matlab functions yet. However, a Scilab user can
add `sci_files` (for Matlab functions or for user defined functions)
to Scilab using the following tips.

In M2SCI, a function call is considered as a "tree" (it is also the
case for the instructions of the file to convert), represented in
Scilab by a `tlist` with following fields:


+
    :name Matlab function name
    : :lhsnb number of Matlab function output parameters
    : :lhs list of Matlab function output parameters
    : :rhs list of Matlab function input parameters
    :



A `sci_function` has one input called `tree` which is also the output
of the function. A `sci_function` has to convert this incoming "tree"
so that it is compatible with Scilab by changing name, lhsnb, lhs
and/or rhs. The other task that has to be done by this function is
inference. Incoming tree contains inference data in its lhs that have
to be updated with what can be infered for the outputs of this
function.

Some useful functions have been written to help to create M2SCI tlists
while writing this conversion function:


+
    :Funcall create a tree representing a function call
    : :Operation create a tree representing an operation
    : :Variable create a tree representing a variable
    : :Cste create a tree representing a constante value
    : :Infer create a tree representing inference data
    : :Type create a tree representing type for inference
    : :Equal create a tree representing an instruction
    :



Some other functions have been designed to get properties of
operands/inputs. Considering A is tlist used in macro tree, you can
use the following functions:
Function returns `%T` if... `is_empty(A)` all dimensions of A are 0
`not_empty(A)` all dimensions of A are known and at least one
dimension of A is not 0 `is_a_scalar(A)` all dimensions of A are 1
`not_a_scalar(A)` all dimensions of A are known and at least one
dimension of A is not 1 `is_a_vector(A)` all dimensions of A are known
and all dimensions of A but one are equal to 1 `not_a_vector(A)` all
dimensions of A are known and at least two dimensions of A are greater
than one `is_real(A)` A is real `is_complex(A)` A is complex
`isdefinedvar(A)` A is a variable already created in M-file currently
converted `allunknown(A)` all dimensions of A are unknown
Some other functions have been written for specific needs while
writing conversion files:


+
    :first_non_singleton is an equivalent to `firstnonsingleton`_ for an
      M2SCI tlist. Calling sequence: `dim = first_non_singleton(A)`
    : :gettempvar generates a temporary variable having a name which does
      not already exist. Calling sequence: `v = gettempvar()`
    : :insert allows to insert instructions. Calling sequence:
      `insert(Equal(...),opt)` with `opt~=1` to insert before current
      instruction and `opt=1` to insert after it.
    : :getoperands can be used to get each operand as a variable. Calling
      sequence: `[A,B] = getoperands(operation_tlist)`
    : :getrhs can be used to get each parameter as a variable. Calling
      sequence: `[A,...] = getrhs(funcall_tlist)`
    : :convert2double change type of input when this type is not
      implemented for a particular function is Scilab. Calling sequence: `A
      = convert2double(A)`
    :



To have more information about how to write such files, refer to
directory SCI/modules/m2sci/macros/sci_files/ which gives many
examples from very simple ones (e.g. sci_abs.sci) to very complex ones
(e.g. sci_zeros.sci).



See Also
~~~~~~~~


+ `m2scideclare`_ Giving tips to help M2SCI...
+ `Funcall`_ Create a tree representing a function call
+ `Operation`_ Create a tree representing an operation
+ `Variable`_ Create a tree representing a variable
+ `Cste`_ Create a tree representing a constant
+ `Infer`_ Create a tree containing inference data
+ `Type`_ Create a tree containing type inference data
+ `Equal`_ Create a tree representing an instruction


.. _Equal: Equal-f5f286e73bda105e538310b3190f75c5.html
.. _m2scideclare: m2scideclare.html
.. _Infer: Infer.html
.. _Variable: Variable.html
.. _Funcall: Funcall.html
.. _Operation: Operation.html
.. _Cste: Cste.html
.. _firstnonsingleton: firstnonsingleton.html
.. _Type: Type-a1fa27779242b4902f7ae3bdd5c6d508.html


