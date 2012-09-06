


now
===

Return current date and time



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t = now()




Description
~~~~~~~~~~~

t = now() returns date and time as a serial date number. (See
`datenum`_)



Examples
~~~~~~~~


::

    `realtimeinit`_(1);
    `realtime`_(0);
    t1 = now()
    `datevec`_(t1)
    `realtime`_(10);
    t1 = now()
    `datevec`_(t1)




See Also
~~~~~~~~


+ `clock`_ Return current time as date vector
+ `datenum`_ Convert to serial date number
+ `datevec`_ Date components


.. _datevec: datevec.html
.. _datenum: datenum.html
.. _clock: clock.html


