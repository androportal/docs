


timer
=====

cpu time



Calling Sequence
~~~~~~~~~~~~~~~~


::

    timer()




Description
~~~~~~~~~~~

Returns the CPU time since the preceding call to `timer()`.

timer has a time precision of 100 nanoseconds.

NOTE: CPU time is the number of processor cycles used for a
computation. This is not at all equivalent to real-world time.

CPU time can be used to compare CPU usage between different programs
or functions , irrespective of background processes that might slow
down the computer.



Examples
~~~~~~~~


::

    timer();A=`rand`_(100,100);timer()




See Also
~~~~~~~~


+ `getdate`_ get date and time information
+ `toc`_ Read the stopwatch timer
+ `tic`_ start a stopwatch timer
+ `etime`_ Elapsed time


.. _getdate: getdate.html
.. _tic: tic.html
.. _etime: etime.html
.. _toc: toc.html


