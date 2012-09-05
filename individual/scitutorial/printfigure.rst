


printfigure
===========

Opens a printing dialog and prints a figure.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    printfigure(figid)
    status = printfigure(figid)




Arguments
~~~~~~~~~

:figid Real: the id of the figure to be printed.
: :status Boolean: *%T* if the printing succeeds, *%F* otherwise.
:



Description
~~~~~~~~~~~

This function opens a dialog to select a printer, printing options...
and then prints the figure.



Examples
~~~~~~~~


::

    `plot2d`_();
    printfigure(`get`_(`gcf`_(), "figure_id"));




See Also
~~~~~~~~


+ `toprint`_ Send text or figure to the printer.
+ `printsetupbox`_ Display print dialog box.


.. _toprint: toprint.html
.. _printsetupbox: printsetupbox.html


