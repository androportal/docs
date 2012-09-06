


xls_read
========

reads a sheet in an Excel file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Value,TextInd] = xls_read(fd,Sheetpos)




Arguments
~~~~~~~~~

:fd a number: the logical unit on the Excel stream returned by
  `xls_open`_.
: :Sheetpos a number: the position of the beginning of the sheet in
  the Excel stream. This position is one of those returned by
  `xls_open`_.
: :Value a matrix of numbers: the numerical data found in the sheet.
  The cells without numerical data are represented by `NaN` values.
: :TextInd a matrix of indices with the same size as `Value`. The 0
  indices indicates that no string exists in the corresponding Excel
  cell. A positive index `i` points to the string `SST(i)` where `SST`
  is given by `xls_open`_.
:



Description
~~~~~~~~~~~

This function reads an Excel sheet given a logical unit on an Excel
stream and the position of the beginning of the sheet within this
stream. It returns the numerical data and the strings contained by the
Excel cells.

The `readxls`_ function can be used to read all an Excel file in one
function with a single function call.

Only BIFF8 Excel files (last Excel file version (2003)) are handled.



Examples
~~~~~~~~


::

    //Decode ole file, extract and open Excel stream
    [fd,SST,Sheetnames,Sheetpos] = `xls_open`_('SCI/modules/spreadsheet/demos/xls/Test1.xls')
    //Read first data sheet
    [Value,TextInd] = xls_read(fd,Sheetpos(1))
    //close the spreadsheet stream
    `mclose`_(fd)




See Also
~~~~~~~~


+ `xls_open`_ opens an Excel file for reading
+ `readxls`_ reads an Excel file




Bibliography
~~~~~~~~~~~~

This function is based on Excel stream description from OpenOffice
(`http://sc.openoffice.org/spreadsheetfileformat.pdf`_).



Used Functions
~~~~~~~~~~~~~~

This function uses the xls.c file which can be found in a Scilab
source version in the directory SCIDIR/modules/spreadsheet/src/c.

.. _readxls: readxls.html
.. _http://sc.openoffice.org/spreadsheetfileformat.pdf: http://sc.openoffice.org/spreadsheetfileformat.pdf
.. _xls_open: xls_open.html


