


weekday
=======

Return day of week



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [N,S] = weekday(D)
    [N,S] = weekday(D, form)




Description
~~~~~~~~~~~

[N,S] = weekday(D) returns the day of the week in numeric(N) and
string(S) form for a given serial date number or date string D. Input
argument D can represent more than one date in an array of serial date
number.

[N,S] = weekday(D, form) returns the week in numeric(N) and string(S)
form, where the content of S depends on the form argument. If form is
'long', then S countains the full name of the weekday (e.g, Thuesday).
If form is 'short', then S contains an abbreviated name (e.g., Tue)
from this table.



Examples
~~~~~~~~


::

    today = `datenum`_();
    [N,S] = weekday(today)
    [N,S] = weekday(today,'short')
    [N,S] = weekday(today,'long')




See Also
~~~~~~~~


+ `datenum`_ Convert to serial date number
+ `datevec`_ Date components
+ `weekday`_ Return day of week


.. _weekday: weekday.html
.. _datenum: datenum.html
.. _datevec: datevec.html


