


About M2SCI tools
=================

Generally speaking about tools to convert Matlab files to Scilab



Description
~~~~~~~~~~~

Scilab includes useful tools to convert Matlab M-files to Scilab.

Taking a Matlab M-file, `mfile2sci` modifies this files so that it can
be compiled by Scilab. After that this compiled code is converted to a
"tree" of instructions by `macr2tree`. This "tree" is an imbrication
of Scilab lists and tlists and is the basis for conversion. Each
instruction of this "tree" is converted to Scilab and inference is
done to known what are the variables. Once this "tree" is converted to
Scilab, code is generated using `tree2code`.

All tlists used for coding this tree (and we call "MSCI tlists") are
listed below:


+
    :funcall tlist representing a function call created by `Funcall`
    : :operation tlist representing an operation created by `Operation`
    : :variable tlist representing a variable created by `Variable`
    : :cste tlist representing a constant created by `Cste`
    : :equal tlist representing an instruction created by `Equal`
    : :ifthenelse tlist representing an IF/THEN/ELSE control instruction
      created inside M2SCI kernel functions
    : :while tlist representing a WHILE control instruction created inside
      M2SCI kernel functions
    : :selectcase tlist representing a SELECT/CASE control instruction
      created inside M2SCI kernel functions
    : :for tlist representing a FOR control instruction created inside
      M2SCI kernel functions
    :



The contents of these tlists is described in corresponding help pages.

Operations are converted using a fonction named `%<opcode>2sci` with
opcode the Scilab code for this operator. See help page for
overloading to have these codes. All these functions are already
written and are in directory SCI/modules/m2sci/macros/percent/.

Function calls are converted using a function called
`sci_<Matlab_function_name>`. Some of these functions have been
written and are in directory SCI/modules/m2sci/macros/sci_files/. We
are working on increasing the set of Matlab functions converted.
However, everybody can written such functions using help page
sci_files.

Inference is done using tlists of type "infer" containing fields:


+
    :dims list of dimensions
    : :type "type" tlist
    : :contents "contents" tlist if a Cell or a Struct
    :



Type is a tlist of type "type" containing fields:


+
    :vtype data type
    : :property property
    :



To have more details about inference see help page for m2scideclare.



See Also
~~~~~~~~


+ `mfile2sci`_ Matlab M-file to Scilab conversion function
+ `translatepaths`_ convert a set of Matlab M-files directories to
  Scilab
+ `overloading`_ display, functions and operators overloading
  capabilities
+ `sci_files`_ How to write conversion functions
+ `Funcall`_ Create a tree representing a function call
+ `Operation`_ Create a tree representing an operation
+ `Variable`_ Create a tree representing a variable
+ `Cste`_ Create a tree representing a constant
+ `Infer`_ Create a tree containing inference data
+ `Type`_ Create a tree containing type inference data
+ `Equal`_ Create a tree representing an instruction
+ `m2scideclare`_ Giving tips to help M2SCI...


.. _Equal: Equal-f5f286e73bda105e538310b3190f75c5.html
.. _m2scideclare: m2scideclare.html
.. _Infer: Infer.html
.. _translatepaths: translatepaths.html
.. _sci_files: sci_files.html
.. _Variable: Variable.html
.. _Funcall: Funcall.html
.. _Operation: Operation.html
.. _Cste: Cste.html
.. _overloading: overloading.html
.. _mfile2sci: mfile2sci.html
.. _Type: Type-a1fa27779242b4902f7ae3bdd5c6d508.html


