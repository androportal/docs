


getdate
=======

get date and time information



Calling Sequence
~~~~~~~~~~~~~~~~


::

    dt=getdate()
    x=getdate("s")
    dt=getdate(x)




Arguments
~~~~~~~~~

:dt an integer vector with 10 entries (see below)
: :x an integer containing a date coded in second from 1 Jan 1970
:



Description
~~~~~~~~~~~

:dt=getdate() returns the current date in format given below:
    :dt(1) The year as a number (with the century) between 0000 and 9999.
    : :dt(2) The month of the year as a number between 01 and 12.
    : :dt(3) The ISO 8601 week number as a number between 01 and 53.
    : :dt(4) The Julian day of the year as a number between 001 and 366.
    : :dt(5) Specifies the weekday as a decimal number [1,7], with 1
      representing Sunday.
    : :dt(6) The day of the month as a number between 01 and 31.
    : :dt(7) The hour of the day is output as a number between 00 and 23.
    : :dt(8) The minute is output as a number between 00 and 59.
    : :dt(9) The second is output as a number between 00 and 59.
    : :dt(10) The millisecond is output as a number between 000 and 999.
    :

: :x=getdate("s") returns a scalar with the number of seconds since
  Jan 1, 1970, 00:00 UTC (Unix Time Convention) Please note that the
  return value contains the `leap seconds`_.
: :dt=getdate(x) formats the date given by x (number of seconds since
  Jan 1, 1970, 00:00 UTC) in format given above. In this case dt(10) is
  always equal to 0.
:



Examples
~~~~~~~~


::

    w=getdate()
    `mprintf`_("Year:%d,Month:%d,Day:%d",w(1),w(2),w(6));
    
    x=getdate("s")
    getdate(x)




See Also
~~~~~~~~


+ `date`_ Current date as date string
+ `timer`_ cpu time


.. _leap seconds: http://en.wikipedia.org/wiki/Leap_second
.. _timer: timer.html
.. _date: date.html


