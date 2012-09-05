


readxls
=======

reads an Excel file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sheets = readxls(file_path)




Arguments
~~~~~~~~~

:file_path a character string: the path of the Excel file.
: :sheets an `mlist` of type `xls`, with one field named `sheets`
:



Description
~~~~~~~~~~~

Given an Excel file path this function returns an `mlist` data
structure of type `xls`, with one field named `sheets`. The `sheets`
field itself contains a list of sheet data structure.

`sheet=mlist(['xlssheet','name','text','value'],sheetname,Text,Value)`
where `sheetname` is a character string containing the name of the
sheet, `Text` is a matrix of string which contains the cell's strings
and `Value` is a matrix of numbers which contains the cell's values.

Only BIFF8 Excel files (last Excel file version (2003)) are handled.



Examples
~~~~~~~~


::

    Sheets = readxls('SCI/modules/spreadsheet/demos/xls/t1.xls')
    // some basic operations on Sheets
    `typeof`_(Sheets)
    s1=Sheets(1) //get the first sheet
    `typeof`_(s1)
    s1.value //get the first sheet value field
    s1.text  //get the first sheet text field
    s1(2,:)  //get the 2 row of the sheet
    `typeof`_(s1(2,:))
    
    `disp`_(s1)




See Also
~~~~~~~~


+ `xls_open`_ opens an Excel file for reading
+ `xls_read`_ reads a sheet in an Excel file




Used Functions
~~~~~~~~~~~~~~

This function is based on the Scilab functions `xls_open` and
`xls_read`.

.. _xls_read: xls_read.html
.. _xls_open: xls_open.html


