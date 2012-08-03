====
"datevec"
====

Scilab Function Last update : 31/08/2004
**datevec** - Date components



Calling Sequence
~~~~~~~~~~~~~~~~

V=datevec(DT)
[Y,M,D,H,MI,S]=datevec(DT)




Description
~~~~~~~~~~~

V = datevec(DT) converts a serial date number (defined by datenum) to
a date vector V having elements [year, month, day, hour, minute,
second]. The first five vector elements are integers.

[Y, M, D, H, MI, S] = datevec(DT) returns the components of the date
vector as individual variables



Examples
~~~~~~~~


::

    datevec(720840)
    
    datevec(datenum()) 
    
     




See Also
~~~~~~~~

` **datenum** `_,` **calendar** `_,



Authors
~~~~~~~

****A.C


.. _
      : ://./utilities/calendar.htm
.. _
      : ://./utilities/datenum.htm


