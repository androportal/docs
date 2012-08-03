====
"save_format"
====

Scilab Data Type Last update : 29/09/2005
**save_format** - format of files produced by "save"



Description
~~~~~~~~~~~

Variables are saved by Scilab with the ` **save** `_ command in this
format:

each variable record is appended consecutively to the file. The
variable record begins with 24 bytes holding the variable name in
encoded format (see ` **code2str** `_), where the name is terminated
by the value 40.

After that comes the variable type (long integer), then, depending on
it, for:

**Floating matrices (type 1)** row size m (long integer), column size
  n (long integer), it (long integer); data (8*n*m*(it+1) bytes)


**Polynomials (type 2) and Size implicit indices (?) (type 129)** row
  size m (long integer), column size n (long integer), it (long
  integer); formal variable name (16 bytes); pointer table (m*n+1 long
  integers); data (8*(N-1)*(it+1) bytes, where N is the last entry of
  the pointer table)


**Booleans (type 4)** row size m (long integer), column size n (long
  integer); data (4*n*m bytes)


**Floating sparse matrices (type 5)** row size m (long integer),
  column size n (long integer), it (long integer), nel (long integer);
  index (4*m+nel bytes); non-zero values (8*nel*(it+1) bytes)


**Boolean sparse matrices (type 6)** row size m (long integer), column
  size n (long integer), it (long integer), nel (long integer); index
  (4*m+nel bytes); non-zero values (4*nel*(it+1) bytes)


**Integer matrices (type 8)** row size m (long integer), column size n
  (long integer), integer type (long integer): 1,2,4, or 11,12,14 for
  signed and unsigned 1,2,4 bytes integers; data (n*m*(it modulo 10)
  bytes)


**handles (type 9)** ??


**Strings (type 10)** row size m (long integer), column size n (long
  integer), total number of characters nc+1 (long integer); pointer
  table (n*m+1 bytes); data (4*nc bytes)


**Uncompiled functions (type 11)** nout (long integer), lhs names
  (24*nout bytes), nin (long integer), rhs names (24*nin bytes); code
  length N (long integer), code (4*N bytes)


**Compiled functions (type 13)** nout (long integer), lhs names
  (24*nout bytes), nin (long integer), rhs names (24*nin bytes); code
  length N (long integer), pseudocode (4*N bytes)


**Libraries (type 14)** path length np (long integer), path name (4*np
  bytes), number of names nn (long integer), class pointers (120 bytes);
  names (24*nn bytes);


**Lists (type 15), tlists (type 16), mlists (type 17)** number of
  fields n (long integer), pointers (4*(n+1) bytes); variables (each one
  written according to its format)


**Pointers (type 128)** ??




See Also
~~~~~~~~

` **save** `_,` **load** `_,` **listvarinfile** `_,` **type** `_,`
**typeof** `_,



Authors
~~~~~~~

****compiled by Enrico Segre


.. _
      : ://./fileio/load.htm
.. _
      : ://./fileio/../strings/code2str.htm
.. _
      : ://./fileio/../elementary/typeof.htm
.. _
      : ://./fileio/../programming/type.htm
.. _
      : ://./fileio/listvarinfile.htm
.. _
      : ://./fileio/save.htm


