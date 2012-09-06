


m2scideclare
============

Giving tips to help M2SCI...



Description
~~~~~~~~~~~

The main difficulty for M2SCI ( `mfile2sci`) is to find what variables
are: dimensions, type...

To help this tool, just add comments beginning with `%m2scideclare` in
the M-file to convert, ( `%m2sciassume` was used in previous Scilab
versions and is now obsolete).

The syntax of this command is:

`%m2scideclare variable_name|dimensions|data_type|property`

with :


  +

    + variable_name: name of the variable declared. It can be a Struct
      field (e.g. `x(1,2).name`) or describe the contents of a Cell using
      syntax `x(1,2).entries`. NOTE that for Cells and Structs, `*` can be
      used as an index (see examples below).
    + dimensions: dimensions of the variable declared separated by blanks,
      if a dimension is unknown, replace it by `?`. NOTE that String
      dimensions must be similar to Matlab ones e.g. `1 6` for character
      string 'string'.
    + data_type: data type of the variable which can be: m2scideclare data
      type Scilab "equivalent" type Double 1 Boolean 4 Sparse 5 Int 8 Handle
      9 String 10 Struct Matlab struct (16) Cell Matlab cell (17) Void No
      type (0) ? Unknown type
    + property: property of the variable which can be: m2scideclare
      property Scilab "equivalent" Real Real data Complex Complex data ?
      Unknown property This field is ignored for following datatypes:
      `Cell`, `Struct`, `String` and `Boolean`.



All data given by `m2scideclare` are compared with infered data, in
case of conflict, infered data are kept and a warning message is
displayed. If you are sure about your data, report a bug.

Some examples are given below:


  +

    + `%m2scideclare var1|2 3|Double|Real`var1 is declared as a 2x3 Double
      matrix containing real data
    + `%m2scideclare var2|2 3 10|Double|Complex`var2 is declared as a
      2x3x10 Double hypermatrix containing complex data
    + `%m2scideclare var3(1,2).name|1 10|String|?`var3 is declared as a
      Struct array containing a 1x10 character string in field 'name' of
      struct at index (1,2)
    + `%m2scideclare var4(1,5).entries|1 ?|Boolean|?`var4 is declared as a
      Cell containing a row boolean vector at index (1,5)
    + `%m2scideclare var4(1,6).entries|? ?|Int|?`var4 is declared as a
      Cell containing a row boolean vector at index (1,5) and integer data
      at index (1,6)
    + `%m2scideclare var5(*,*).name|1 ?|String|?`var5 is declared as a
      Struct array containing a 1xn character string in all fields 'name'
    + `%m2scideclare var6(2,*).entries|1 3|Double|Real`var6 is declared as
      a Cell array containing a 1x3 double vector in each element of its
      second row





