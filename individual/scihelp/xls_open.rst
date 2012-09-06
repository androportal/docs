


xls_open
========

opens an Excel file for reading



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [fd,SST,Sheetnames,Sheetpos] = xls_open(file_path)




Arguments
~~~~~~~~~

:file_path a character string: the path of the Excel file.
: :fd a number: the logical unit on the Excel stream.
: :SST A vector of all character strings which appear in the Excel
  sheets.
: :Sheetnames a vector of strings: the sheet names.
: :Sheetpos a vector of numbers: the position of the beginning of
  sheets in the Excel stream.
:



Description
~~~~~~~~~~~

This function first analyzes the ole2 data structure associated with
the given file to extract the Excel stream which is included in. After
that the Excel stream is saved in the `TMDIR` directory and opened.
The `fd` logical unit points to this temporary file. Then the first
sheet in this stream is read to get the global information like number
of sheets, sheet names `Sheetnames`, sheet addresses within the stream
`Sheetpos` and the `SST` which contains all the strings used in the
following sheets.

The `fd` and `Sheetpos` data have to be passed to `xls_read`_ to read
the data sheets.

The `readxls`_ function can be used to read all an Excel file in one
function with a single function call.

Only BIFF8 Excel files (last Excel file version (2003)) are handled.



Examples
~~~~~~~~


::

    //Decode ole file, extract and open Excel stream
    [fd,SST,Sheetnames,Sheetpos] = xls_open('SCI/modules/spreadsheet/demos/xls/Test1.xls')
    //Read first data sheet
    [Value,TextInd] = `xls_read`_(fd,Sheetpos(1))
    //close the spreadsheet stream
    `mclose`_(fd)




See Also
~~~~~~~~


+ `xls_read`_ reads a sheet in an Excel file
+ `readxls`_ reads an Excel file




Bibliography
~~~~~~~~~~~~

This function is based on the Microsoft ole2 file documentation
(`http://chicago.sourceforge.net/devel/docs/ole/`_) and on Excel
stream description from OpenOffice
(`http://sc.openoffice.org/spreadsheetfileformat.pdf`_).



Used Functions
~~~~~~~~~~~~~~

The ripole-0.1.4 procedure (`http://www.pldaniels.com/ripole`_) is
used to extract the spreadsheet stream out of the ole file.

.. _xls_read: xls_read.html
.. _http://chicago.sourceforge.net/devel/docs/ole/: http://chicago.sourceforge.net/devel/docs/ole/
.. _http://sc.openoffice.org/spreadsheetfileformat.pdf: http://sc.openoffice.org/spreadsheetfileformat.pdf
.. _http://www.pldaniels.com/ripole: http://www.pldaniels.com/ripole
.. _readxls: readxls.html


