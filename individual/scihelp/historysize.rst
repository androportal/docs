


historysize
===========

get number of lines in history



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nb = historysize()



::

    nbMax = historysize("max")



::

    nbMax = historysize(newMax)




Arguments
~~~~~~~~~

:nb number of lines in current history.
: :nbMax number of lines maximum in history file.
: :newMax set number of lines maximum in history file. by default this
  value is 20000 lines max.
:



Description
~~~~~~~~~~~

get number of lines in history.

This function can also used to set maximun number of lines in history
file.



Examples
~~~~~~~~


::

    historysize()
          historysize("max")




