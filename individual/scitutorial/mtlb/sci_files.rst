====
"sci_files"
====

Documentation Last update : 20/12/2004
**sci_files** - How to write conversion functions



Description
~~~~~~~~~~~

To convert calls to Matlab functions, **mfile2sci** uses a function
called **sci_<Matlab_function_name>** . All these functions are
defined in sci_files in directory SCI/macros/m2sci/sci_files/. The set
of sci_files given in Scilab distribution does not allow to convert
calls to all Matlab functions yet. However, a Scilab user can add
sci_files (for Matlab functions or for user defined functions) to
Scilab using the following tips.

In M2SCI, a function call is considered as a "tree" (it is also the
case for the instructions of the file to convert), represented in
Scilab by a **tlist** with following fields:

****
