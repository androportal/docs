====
"readxls"
====

Scilab Function Last update : 06/04/2005
**readxls** - reads an Excel file



Calling Sequence
~~~~~~~~~~~~~~~~

sheets = readxls(file_path)




Parameters
~~~~~~~~~~


+ **file_path** : a character string: the path of the Excel file.
+ **sheets** : an **mlist** of type **xls** , with one field named
  **sheets**




Description
~~~~~~~~~~~

Given an Excel file path this function returns an **mlist** data
structure of type **xls** , with one field named **sheets** . The
**sheets** field itself contains a list of sheet data structure.

**sheet=mlist(['xlssheet','name','text','value'],sheetname,Text,Value)
** where **sheetname** is a character string containing the name of
the sheet, **Text** is a matrix of string which contains the cell's
strings and **Value** is a matrix of numberswhich contains the cell's
values.

Warning only BIFF8 Excel files (last Excel file version) are handled



Examples
~~~~~~~~


::

    
        Sheets = readxls('SCI/demos/excel/t1.xls')
        // some basic operations on Sheets
        typeof(Sheets)
        s1=Sheets(1) //get the first sheet
        typeof(s1)
        s1.value //get the first sheet value field
        s1.text  //get the first sheet text field
        s1(2,:)  //get the 2 row of the sheet
        typeof(s1(2,:))
    
        editvar s1
     




See Also
~~~~~~~~

` **xls_open** `_,` **xls_read** `_,



Authors
~~~~~~~

**Pierrick Mode** INRIA
**Serge Steer** INRIA




Used Function
~~~~~~~~~~~~~
This function is based on the Scilab functions **xls_open** and
**xls_read**
.. _
      : ://./fileio/xls_open.htm
.. _
      : ://./fileio/xls_read.htm


