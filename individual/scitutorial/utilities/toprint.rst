====
"toprint"
====

Scilab Function Last update : 09/08/2005
**toprint** - Send text or figure to the printer (Windows)



Calling Sequence
~~~~~~~~~~~~~~~~

toprint('filename')
toprint(['line1','line2',...],'page header')
toprint(num)
toprint(num,output)




Description
~~~~~~~~~~~

toprint('filename') send text file to the printer.

bOK=toprint('filename') send text file to the printer. bOK is %T if
file exist.

toprint(['line1','line2',...],'page header')

toprint(num) send the figure with figure_id=num to the printer.

toprint(num,output) send the figure with figure_id=num to the
printer.With ouput='pos' or 'gdi' ('gdi' by default)



Examples
~~~~~~~~


::

    toprint(['Test','toprint primitive'],'Scilab page header');
    scf(4);
    plot();
    toprint(4);
    toprint(4,'pos');
    




See Also
~~~~~~~~

` **printsetupbox** `_,



Authors
~~~~~~~

****A.C


.. _
      : ://./utilities/printsetupbox.htm


