====
"xls_read"
====

Scilab Function Last update : 22/03/2005
**xls_read** - read a sheet in an Excel file



Calling Sequence
~~~~~~~~~~~~~~~~

[Value,TextInd] = xls_read(fd,Sheetpos)




Parameters
~~~~~~~~~~


+ **fd** : a number, the logical unit on the Excel stream returned by
  ` **xls_open** `_.
+ **Sheetpos** : a number: the position of the beginning of the sheet
  in the Excel stream. This position is one of those returned by `
  **xls_open** `_.
+ **Value** : a matrix of numbers, the numerical data found in the
  sheet. The cell without numerical data are represented by **NaN**
  values.
+ **TextInd** : a matrix of indices with the same size as **Value** .
  The 0 indices indicates that no string exists in the correspondin
  Excel cell. a positive index **i ** points to the string **SST(i)**
  where **SST** is given by ` **xls_open** `_.




Description
~~~~~~~~~~~

This function reads an Excel sheet given a logical unit on an Excel
stream ant the position of the beginning of the sheet within this
stream. It returns the numerical data and the strings contained by the
Excel cells.

The ` **readxls** `_ function can be used to read all an Excel file in
one function with a single function call.

Warning only BIFF8 Excel files (last Excel file version) are handled



Examples
~~~~~~~~


::

    
       //Decode ole file, extract and open Excel stream
        [fd,SST,Sheetnames,Sheetpos] = xls_open('SCI/demos/excel/Test1.xls')
        //Read first data sheet
        [Value,TextInd] = xls_read(fd,Sheetpos(1))
        //close the excel stream
        mclose(fd)
      




See Also
~~~~~~~~

` **xls_open** `_,` **readxls** `_,



Authors
~~~~~~~

**Pierrick Mode** INRIA
**Serge Steer** INRIA




Bibliography
~~~~~~~~~~~~
This function is based on Excel stream description from OpenOffice
(http://sc.openoffice.org/excelfileformat.pdf).


Used Function
~~~~~~~~~~~~~
This unction uses the xls.c file which can be found in a Scilab source
version in the directory SCIDIR/routines/sound
.. _
      : ://./fileio/xls_open.htm
.. _
      : ://./fileio/readxls.htm


