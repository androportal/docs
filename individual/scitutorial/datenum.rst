


datenum
=======

Convert to serial date number



Calling Sequence
~~~~~~~~~~~~~~~~


::

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

N = datenum(DT) converts one or more date vectors to serial date
number N. DT can be an m-by-6 or m-by-3 matrix containing m full or
partial date vector respectively.

N = datenum(Y, M, D) returns the serial date numbers for corresponding
elements of the Y, M, and D (year, month, day) arrays. Y, M and D must
be arrays of the same size (or any can be a scalar).

N = datenum(Y, M, D, H, MI, S) returns the serial date numbers for
corresponding elements of the Y, M, D, H, MI, and S (year, month, day,
hour, minute, and second) array values.Y, M, D, H, MI, and S must be
arrays of the same size (or any can be a scalar).



Examples
~~~~~~~~


::

    // N = datenum()	
    datenum()
    
    // N = datenum(DT)
    A = [ 0 1 1 0 0 0 ; 2005 2 8 21 37 30 ]
    datenum(A)
    
    // N = datenum(Y, M, D)
    
    Years = [0; 1973; 2006]
    Months = [1; 8; 2]
    Days = [1; 4; 8]
    datenum(Years,Months,Days)
    
    Years = [0 0 0 ; 0 0 0]
    Months = [1 1 1 ; 1 1 1]
    Days = [1 2 3 ; 4 5 6]
    datenum(Years,Months,Days)
    
    // N = datenum(Y, M, D, H, MI, S)
    
    Years = `grand`_(5,10,'uin',0,2006)
    Months = `grand`_(5,10,'uin',1,12)
    Days = `grand`_(5,10,'uin',1,28)
    Hours = `grand`_(5,10,'uin',0,23)
    Minutes = `grand`_(5,10,'uin',0,59)
    Seconds = `grand`_(5,10,'uin',0,59)
    datenum(Years,Months,Days,Hours,Minutes,Seconds)




See Also
~~~~~~~~


+ `datevec`_ Date components
+ `calendar`_ Calendar


.. _calendar: calendar.html
.. _datevec: datevec.html


