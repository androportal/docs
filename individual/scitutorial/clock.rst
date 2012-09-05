


clock
=====

Return current time as date vector



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c = clock




Description
~~~~~~~~~~~

c = clock returns a 6-element date vector containing the current date
and time in decimal form:

c = [year month day hour minute seconds]

the first five elements are integers. The seconds element is accurate
to several digits beyond the decimal point.



Examples
~~~~~~~~


::

    clock




See Also
~~~~~~~~


+ `datenum`_ Convert to serial date number
+ `datevec`_ Date components
+ `timer`_ cpu time
+ `etime`_ Elapsed time
+ `tic`_ start a stopwatch timer
+ `toc`_ Read the stopwatch timer


.. _tic: tic.html
.. _timer: timer.html
.. _datenum: datenum.html
.. _datevec: datevec.html
.. _etime: etime.html
.. _toc: toc.html


