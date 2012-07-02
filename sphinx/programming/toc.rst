Scilab Function

Last update : 10/06/2004

**toc** - Read the stopwatch timer

Calling Sequence
~~~~~~~~~~~~~~~~

``toc()``

``t = toc()``

Parameters
~~~~~~~~~~

-  ``           t         ``: number of seconds since last call to
   ``           tic()         `` (Precision in order of millisecond).

Description
~~~~~~~~~~~

The sequence of commands ``         tic(); operation; toc();       ``
prints the number of seconds required for the operation.

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

```           tic         `` <tic.htm>`_,
```           timer         `` <../utilities/timer.htm>`_,
```           etime         `` <etime.htm>`_,

Authors
~~~~~~~

****V.C.

****A.C.
