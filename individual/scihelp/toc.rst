


toc
===

Read the stopwatch timer



Calling Sequence
~~~~~~~~~~~~~~~~


::

    toc()
    t = toc()




Arguments
~~~~~~~~~

:t number of seconds since last call to `tic()` (Precision in order of
  millisecond).
:



Description
~~~~~~~~~~~

The sequence of commands `tic(); operation; toc();` prints the number
of seconds required for the operation.



Examples
~~~~~~~~


::

    `tic`_();
    `realtimeinit`_(1);
    `realtime`_(0);
    `realtime`_(10);
    toc();




See Also
~~~~~~~~


+ `tic`_ start a stopwatch timer
+ `timer`_ cpu time
+ `etime`_ Elapsed time


.. _tic: tic.html
.. _timer: timer.html
.. _etime: etime.html


