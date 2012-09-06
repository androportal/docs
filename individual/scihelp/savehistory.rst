


savehistory
===========

save the current history in a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    savehistory()
    savehistory(f)




Arguments
~~~~~~~~~

:f file pathname
:



Description
~~~~~~~~~~~

save the current history in a file.

by default, history filename is SCIHOME+'/.history.scilab'



Examples
~~~~~~~~


::

    savehistory(SCI+'/session.scilab')




See Also
~~~~~~~~


+ `loadhistory`_ load a history file
+ `resethistory`_ Deletes all entries in the scilab history.
+ `gethistory`_ returns current scilab history in a string matrix


.. _loadhistory: loadhistory.html
.. _resethistory: resethistory.html
.. _gethistory: gethistory.html


