


etime
=====

Elapsed time



Calling Sequence
~~~~~~~~~~~~~~~~


::

    e = etime(t2,t1)




Arguments
~~~~~~~~~

:t2 a vector with 6 or 10 values.
: :t1 a vector with 6 or 10 values.
: :e number of seconds between `t2` and `t1`.
:



Description
~~~~~~~~~~~

:t1 and t2 with 10 values `t2` and `t1` must have format returned by
  `getdate`. In this case, their third, fourth and fifth values are
  ignored.
: :t1 and t2 with 6 values `t2` and `t1` must have format: T = [Year
  Month Day Hour Minute Second] with Second a number of seconds with
  milliseconds (e.g: 12.345).
:

`t2` and `t1` must have the same size.

`t2` et `t1` can be matrices with each line containing a format
described above (all lines having same format).



Examples
~~~~~~~~


::

    t1=[2004 06 10 17 00 12.345]
    t2=[2004 06 10 17 01 13.965]
    E1=etime(t2,t1)
    t1=[2004 06 24 162 5 10 17 00 12 345]
    t2=[2004 06 24 162 5 10 17 01 13 965]
    E2=etime(t2,t1)




See Also
~~~~~~~~


+ `tic`_ start a stopwatch timer
+ `toc`_ Read the stopwatch timer
+ `getdate`_ get date and time information
+ `datenum`_ Convert to serial date number
+ `datevec`_ Date components


.. _tic: tic.html
.. _datenum: datenum.html
.. _datevec: datevec.html
.. _getdate: getdate.html
.. _toc: toc.html


