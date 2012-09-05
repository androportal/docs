


calendar
========

Calendar



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c=calendar()
    c = calendar(y,m)




Description
~~~~~~~~~~~

c = calendar returns a list containing a calendar for the current
month. The calendar runs Sunday to Saturday.

c = calendar(y,m), where y and m are integers, returns a calendar for
the specified month of the specified year.



Examples
~~~~~~~~


::

    calendar()
    calendar(1973,8)




See Also
~~~~~~~~


+ `datevec`_ Date components
+ `datenum`_ Convert to serial date number


.. _datenum: datenum.html
.. _datevec: datevec.html


