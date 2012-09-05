


toprint
=======

Send text or figure to the printer.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    toprint(filename)
    toprint(linestoprint,pageheader)
    toprint(figid)
    toprint(figid,output)
    status = toprint(filename)
    status = toprint(linestoprint,pageheader)
    status = toprint(figid)
    status = toprint(figid,output)




Arguments
~~~~~~~~~

:filename String: path of the text file to be printed.
: :linestoprint String matrix: text to be printed, each entry is a
  line in printed pages.
: :pageheader String: header of printed pages.
: :figid Real: the id of the figure to be printed.
: :output String: printing output type, must be *"pos"* for PostScript
  or *"gdi"* for Bitmap format ( *"gdi"* by default).
: :status Boolean: *%T* if the printing succeeds, *%F* otherwise.
:



Description
~~~~~~~~~~~

Prints a text file, Scilab character strings or figure.



Examples
~~~~~~~~


::

    toprint(SCI+"/etc/scilab.start");
    toprint(['Test','toprint primitive'],'Scilab page header');
    `scf`_(4);
    `plot`_();
    toprint(4);
    toprint(4,"pos");




See Also
~~~~~~~~


+ `printfigure`_ Opens a printing dialog and prints a figure.
+ `printsetupbox`_ Display print dialog box.


.. _printfigure: printfigure.html
.. _printsetupbox: printsetupbox.html


