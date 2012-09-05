


api_scilab
==========

api_scilab is the Scilab interface to read/write data from/to Scilab
memory



Description
~~~~~~~~~~~

In the previous versions of Scilab, there was no clear or easy way to
extend Scilab or to use it as an embedded application.

Since Scilab 5.2.0, these issues have been tackled by API Scilab. Its
provides a new consistent, documented and easy way API.

This API provides functions to read/write data from/to Scilab memory.

It provides many advantages:


+ Management of all Scilab data types
+ Consistency over all data types
+ Error management
+ Fully documented
+ Fully tested by unitary tests
+ Straight and named access (See the `call_scilab API`_) to variables.
+ And it will be maintained over future versions of Scilab


Usually, this API is used to extend Scilab capabilities but can be
used in other contexts


+ Libraires or C/C++ functions: Many librairies have been developed on
  the free/Open source or proprietary markets. This library can be
  loaded and used in a high level language like Scilab. API Scilab
  provides the capabilities to interact with such libraries.
+ Scilab can be used as computing engine from a third party software.
  This feature is called `call_scilab`_ when Scilab is used from C/C++
  code or `javasci`_ when used from Java. Access to variable is done
  through their names (named variable).


Note that old APIs (stackX.h) will not be available after Scilab 6.0
(included).



History
~~~~~~~
Version Description 5.4.0 Add some functions/macros in replacement of
stack functions/macros

+ nbInputArgument Replaces `Rhs`
+ nbOutputArgument Replaces `Lhs`
+ AssignOutputVariable Replaces `LhsVar`
+ ReturnArguments Replaces `PutLhsVar`
+ CheckInputArgument Replaces `CheckRhs`
+ CheckOutputArgument Replaces `CheckLhs`


Add functions to identify list datatypes: `isListType`,
`isNamedListType`, `isTListType`, `isNamedTListType`, `isMListType`,
`isNamedMListType`



See Also - API_Scilab
~~~~~~~~~~~~~~~~~~~~~


+ `boolean reading API`_,
+ `boolean writing API`_,
+ `boolean sparse reading API`_,
+ `boolean sparse writing API`_,
+ `Common getvaraddr API`_,
+ `Common getvardimension API`_,
+ `Common getvartype API`_,
+ `Common iscomplex API`_,
+ `Common isvarmatrixtype API`_,
+ `Double management reading API`_,
+ `Double management writing API`_,
+ `Integer management reading API`_,
+ `Integer management writing API`_,
+ `getmatrixofintegerprecision API`_,
+ `Pointer reading API`_,
+ `Pointer writing API`_,
+ `poly getpolyvariablename API`_,
+ `Polynomial management reading API`_,
+ `Polynomial management writing API`_,
+ `Sparse management reading API`_,
+ `Sparse management writing_API`_,
+ `String management reading API`_,
+ `String management writing API`_




See Also - API_Scilab list management
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


+ `list boolean reading API`_
+ `list boolean writing API`_
+ `list boolean sparse reading API`_
+ `list boolean sparse writing API`_
+ `list_createlist API`_
+ `list double reading API`_
+ `list double writing API`_
+ `list getlistitemaddress API`_
+ `list getlistitemnumber API`_
+ `list integer reading API`_
+ `list integer writing API`_
+ `list pointer reading API`_
+ `list pointer writing API`_
+ `list poly reading API`_
+ `list poly writing API`_
+ `list sparse reading API`_
+ `list sparse writing API`_
+ `list string reading API`_
+ `list string writing API`_




See Also - call_scilab
~~~~~~~~~~~~~~~~~~~~~~


+ `Call_Scilab`_
+ `Compile and run with call_scilab`_
+ `Matrix Management`_
+ `Boolean Management`_
+ `Complex Management`_
+ `String Management`_


.. _Pointer writing API: Pointer_writing_API.html
.. _list boolean writing API: list_boolean_writing_API.html
.. _Integer management writing API: Integer_management_writing_API.html
.. _list pointer writing API: list_pointer_writing_API.html
.. _Complex Management: ComplexManagement_callscilab.html
.. _Compile and run with call_scilab: compile_and_run_call_scilab.html
.. _Common getvartype API: Common_getvartype_API.html
.. _boolean reading API: boolean_reading_API.html
.. _Double management reading API: Double_management_reading_API.html
.. _list getlistitemnumber API: list_getlistitemnumber_API.html
.. _Polynomial management reading API: Polynomial_management_reading_API.html
.. _Common getvaraddr API: Common_getvaraddr_API.html
.. _list sparse reading API: list_sparse_reading_API.html
.. _boolean sparse reading API: bsparse_reading_API.html
.. _javasci: javasci.html
.. _list boolean sparse reading API: list_bsparse_reading_API.html
.. _Matrix Management: DoubleManagement_callscilab.html
.. _list_createlist API: list_createlist_API.html
.. _list double writing API: list_double_writing_API.html
.. _Pointer reading API: Pointer_reading_API.html
.. _list integer reading API: list_integer_reading_API.html
.. _Polynomial management writing API: Polynomial_management_writing_API.html
.. _list sparse writing API: list_sparse_writing_API.html
.. _Common isvarmatrixtype API: Common_isvarmatrixtype_API.html
.. _list boolean sparse writing API: list_bsparse_writing_API.html
.. _Double management writing API: Double_management_writing_API.html
.. _Integer management reading API: Integer_management_reading_API.html
.. _Common iscomplex API: Common_iscomplex_API.html
.. _list string writing API: list_string_writing_API.html
.. _list string reading API: list_string_reading_API.html
.. _Call_Scilab: call_scilab.html
.. _list poly writing API: list_poly_writing_API.html
.. _list pointer reading API: list_pointer_reading_API.html
.. _poly getpolyvariablename API: poly_getpolyvariablename_API.html
.. _String management writing API: String_management_writing_API.html
.. _list boolean reading API: list_boolean_reading_API.html
.. _getmatrixofintegerprecision API: int_getmatrixofintegerprecision_API.html
.. _boolean sparse writing API: bsparse_writing_API.html
.. _list getlistitemaddress API: list_getlistitemaddress_API.html
.. _Common getvardimension API: Common_getvardimension_API.html
.. _String Management: StringManagement_callscilab.html
.. _boolean writing API: boolean_writing_API.html
.. _Boolean Management: BooleanManagement_callscilab.html
.. _Sparse management writing_API: Sparse_management_writing_API.html
.. _list poly reading API: list_poly_reading_API.html
.. _list integer writing API: list_integer_writing_API.html
.. _list double reading API: list_double_reading_API.html
.. _String management reading API: String_management_reading_API.html
.. _Sparse management reading API: Sparse_management_reading_API.html


