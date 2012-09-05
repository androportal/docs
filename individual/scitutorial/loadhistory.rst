


loadhistory
===========

load a history file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    loadhistory()
    loadhistory(f)




Arguments
~~~~~~~~~

:f file pathname
:



Description
~~~~~~~~~~~

load a history file.

by default, history filename is SCIHOME+'/.history.scilab'

by default, loadhistory read last 20000 lines of history file(to
reduce time loading).

see `historysize(value)`_ to modify this value.



Examples
~~~~~~~~


::

    loadhistory(SCI+'/session.scilab')




See Also
~~~~~~~~


+ `savehistory`_ save the current history in a file
+ `resethistory`_ Deletes all entries in the scilab history.
+ `historysize`_ get number of lines in history
+ `gethistory`_ returns current scilab history in a string matrix


.. _savehistory: savehistory.html
.. _historysize: historysize.html
.. _resethistory: resethistory.html
.. _gethistory: gethistory.html


