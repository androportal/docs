


save_format
===========

format of files produced by "save"



Description
~~~~~~~~~~~

Variables are saved by Scilab with the `save`_ function in the
following format:

each variable record is appended consecutively to the file. The
variable record begins with 6 long integer holding the variable name
in encoded format (see the Remarks section below),

After that comes the variable type (long integer), then, depending on
it, for:

:Floating matrices (type 1) row_size m (a long integer), column_size n
  (a long integer), real/complex flag it (a long integer in {0,1}), data
  (n*m*(it+1) doubles)
:

:Polynomials (type 2) and Size implicit indices (type 129) row_size m
  (a long integer), column_size n (a long integer), real/complex flag it
  (long integer in {0,1}), formal variable name (16 bytes), index_table
  (m*n+1 long integers); data ((N-1)*(it+1) doubles) , where N is the
  value of the last entry of the index_table
:

:Booleans (type 4) row_size m (a long integer), column_size n (a long
  integer); data (n*m long integers)
:

:Floating sparse matrices (type 5) row_size m (a long integer),
  column_size n (a long integer), real/complex_flag it (a long integer
  in {0,1}), total_number_of_non_zero_elements nel (a long integer),
  number_of_non_zero_elements_per_row (m long integers),
  column_index_non_zero_elements (nel long integers), non_zero_values
  (nel*(it+1) doubles)
:

:Boolean sparse matrices (type 6) row_size m (a long integer),
  column_size n (a long integer), unused it (a long integer),
  total_number_of_non_zero_elements nel (a long integer),
  number_of_non_zero_elements_per_row (m long integers),
  column_index_non_zero_elements (nel long integers)
:

:Matlab sparse matrix (type 7) row_size m (a long integer),
  column_size n (a long integer), real/complex_flag it (a long integer
  in {0,1}), total_number_of_non_zero_elements nel (a long integer),
  number_of_non_zero_elements_per_column (n long integers),
  row_index_non_zero_elements (nel long integers), non_zero_values
  (nel*(it+1) doubles)
:

:Integer matrices (type 8) row_size m (a long integer), column_size n
  (a long integer), integer_type (a long integer): 1,2,4, or 11,12,14
  for signed and unsigned 1,2,4 bytes integers; data (n*m bytes for
  integer_type 1 or 11, n*m short integers for integer_type 2 or 12, n*m
  long integers for integer_type 4 or 14)
:

:handles (type 9) version (4 bytes) row_size m (a byte), column_size n
(a byte), data (m*n serialization_records) A serialization_record is a
flat representation of the C data structure associated with the
corresponding graphic object. Each graphic object is defined by a
(recursive) set of properties (see the `get`_) function).
    :The saved serialization_record of a graphic object is structured as
      follow type_length n (a byte) type (n bytes, the ascii codes of the
      type name) property_values record (variable length)
    :

:

:Strings (type 10) row_size m (a long integer), column_size n (a long
  integer), index_table (n*m+1 long integers); data (N long integers,
  the Scilab encoding of the characters (see `code2str`_), where N is
  the value of the last entry of the index_table
:

:Uncompiled functions (type 11) nout (long integer), lhs_names (6*nout
  long integers, see the Remarks section below), nin (long integer),
  rhs_names (6*nin long integers, see the Remarks section below);
  code_length N (a long integer), code (N long integers)
:

:Compiled functions (type 13) nout (long integer), lhs_names (6*nout
  long integers, see the Remarks section below), nin (long integer),
  rhs_names (6*nin long integers, see the Remarks section below),
  pseudo_code_length N (a long integer), pseudo_code (N long integers)
:

:Libraries (type 14) path_length np (a long integer), path_name (np
  long integers: the path character codes sequence, (see `code2str`_)),
  number of names nn (long integer), names (6*nn long integers, see the
  Remarks section below);
:

:Lists (type 15), tlists (type 16), mlists (type 17) number of fields
  n (a long integer), index (n+1 long integers); variables_sequence (n
  variables, each one written according to its format)
:

:Pointers (type 128) Not handled
:

:Function pointers (type 130) function_ptr (a long integer,(see
  `funptr`_)) function_name_code (6 long integers,see the Remarks
  section below);
:



Remarks
~~~~~~~

Numbers (long interger, short integers, double) are stored using the
little endian convention.

The variable names are stored as a sequence of 6 long integers, with a
specific encoding. see the cvname.f file for details.



See Also
~~~~~~~~


+ `save`_ Save a variable or a serie of variables in a binary file
+ `load`_ Load a saved variable or a serie of variables
+ `listvarinfile`_ list of variables in a saved data file
+ `type`_ Returns the type of a variable
+ `typeof`_ object type


.. _code2str: code2str.html
.. _type: type.html
.. _get: get.html
.. _listvarinfile: listvarinfile.html
.. _load: load.html
.. _funptr: funptr.html
.. _typeof: typeof.html
.. _save: save.html


