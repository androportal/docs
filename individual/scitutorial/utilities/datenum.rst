====
"datenum"
====

Scilab Function Last update : 31/08/2004
**datenum** - Convert to serial date number



Calling Sequence
~~~~~~~~~~~~~~~~

N = datenum()
N = datenum(DT)
N = datenum(Y, M, D)
N = datenum(Y, M, D, H, MI, S)




Description
~~~~~~~~~~~

The datenum function converts date vectors (defined by datevec) into
serial date numbers. Date numbers are serial days elapsed from some
reference date. By default, the serial day 1 corresponds to
1-Jan-0000.

N = datenum() returns the serial date numbers corresponding to current
date.

N = datenum(Y, M, D) returns the serial date numbers for corresponding
elements of the Y, M, and D (year, month, day) arrays.

N = datenum(Y, M, D, H, MI, S) returns the serial date numbers for
corresponding elements of the Y, M, D, H, MI, and S (year, month, day,
hour, minute, and second) array values.



Examples
~~~~~~~~


::

    datenum()
    
    datenum(1973,8,4) 
    
     




See Also
~~~~~~~~

` **datevec** `_,` **calendar** `_,



Authors
~~~~~~~

****A.C


.. _
      : ://./utilities/datevec.htm
.. _
      : ://./utilities/calendar.htm


