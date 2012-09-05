


tic
===

start a stopwatch timer



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tic()




Description
~~~~~~~~~~~

The sequence of commands `tic(); operation; toc();` prints the number
of seconds required for the operation.



Examples
~~~~~~~~


::

    tic();
    `realtimeinit`_(1);
    `realtime`_(0);
    `realtime`_(10);
    `toc`_();




See Also
~~~~~~~~


+ `toc`_ Read the stopwatch timer
+ `timer`_ cpu time
+ `etime`_ Elapsed time


.. _etime: etime.html
.. _timer: timer.html
.. _toc: toc.html


