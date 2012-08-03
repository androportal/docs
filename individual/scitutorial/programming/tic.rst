====
"tic"
====

Scilab Function Last update : 10/06/2004
**tic** - start a stopwatch timer



Calling Sequence
~~~~~~~~~~~~~~~~

tic()




Description
~~~~~~~~~~~

The sequence of commands **tic(); operation; toc();** prints the
number of seconds required for the operation.



Examples
~~~~~~~~


::

    
    
    tic();
    realtimeinit(1);
    realtime(0);
    realtime(10);
    toc();
     
      




See Also
~~~~~~~~

` **toc** `_,` **timer** `_,` **etime** `_,



Authors
~~~~~~~

****V.C.
****A.C.


.. _
      : ://./programming/toc.htm
.. _
      : ://./programming/../utilities/timer.htm
.. _
      : ://./programming/etime.htm


