


parallel_concurrency
====================

query about the concurrency of the current execution context



Calling Sequence
~~~~~~~~~~~~~~~~


::

    C=parallel_concurrency()




Description
~~~~~~~~~~~

parallel_concurrency() returns a non-zero value when called from a
parallel execution context (such as `parallel_run`_.


::

    function r=dummy_arg(n)
      r= parallel_concurrency();
      endfunction;
    parallel_concurrency() // returns 0
    // parallel_run requires a function taking at least one argument
    `parallel_run`_(1:2,dummy_arg)// returns 2 non zero values


.. _parallel_run: parallel_run.html


