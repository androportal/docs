


datevec
=======

Date components



Calling Sequence
~~~~~~~~~~~~~~~~


::

    V=datevec(DT)
    [Y,M,D,H,MI,S]=datevec(DT)




Description
~~~~~~~~~~~

V = datevec(DT) converts a serial date number (defined by datenum) to
a date vector V having elements [year, month, day, hour, minute,
second]. The first five vector elements are integers. DT can be an
array.

[Y, M, D, H, MI, S] = datevec(DT) returns the components of the date
vector as individual variables. DT can be an array.



Examples
~~~~~~~~


::

    // First example
    datevec(720840)
    
    // Second example
    datevec(`datenum`_())
    
    // Third example (With integers values)
    A = `grand`_(10,12,'uin',1,1000000)
    datevec(A)
    
    // Fourth example (With real values)
    A = `grand`_(10,12,'unf',1,1000000)
    datevec(A)




See Also
~~~~~~~~


+ `datenum`_ Convert to serial date number
+ `calendar`_ Calendar


.. _calendar: calendar.html
.. _datenum: datenum.html


