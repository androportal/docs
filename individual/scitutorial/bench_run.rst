


bench_run
=========

Launch benchmark tests



Calling Sequence
~~~~~~~~~~~~~~~~


::

    bench_run()
    bench_run(module[,test_name[,options]])




Arguments
~~~~~~~~~

:module a vector of string. It can be the name of a module or the
  absolute path of a toolbox.
: :test_name a vector of string
: :options a vector of string

    + list : list of the benchmark tests available in a module
    + help : displays some examples of use in the Scilab console
    + nb_run=value : repeat the benchmark test value times

:



Description
~~~~~~~~~~~

Search for .tst files in benchmark test library execute them, and
display a report about execution time. The .tst files are searched in
directories SCI+"/modules/*/tests/benchmark".

Special tags may be inserted in the .tst file, which help to control
the processing of the corresponding test. These tags are expected to
be found in Scilab comments.

These are the available tags :


+ <-- BENCH NB RUN : 10 --> This test will be repeated 10 times.
+ <-- BENCH START --> <-- BENCH END --> The interesting part of the
  benchmark must be enclosed by these tags.




Examples
~~~~~~~~

Some simple examples of invocation of bench_run


::

    // Launch all tests
    bench_run();
    bench_run([]);
    bench_run([],[]);
    
    // Test one or several module
    bench_run('core');
    bench_run('core',[]);
    bench_run(['core','string']);
    
    // Launch one or several test in a specified module
    bench_run('core',['trycatch','opcode']);
    
    // With options
    bench_run([],[],'list');
    bench_run([],[],'help');
    bench_run([],[],'nb_run=2000');


An example of a benchmark file. This file corresponds to the file
SCI/modules/linear_algebra/tests/benchmarks/bench_chol.tst.


::

    // =============================================================================
    // Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
    // Copyright (C) 2007-2008 - INRIA
    //
    //  This file is distributed under the same license as the Scilab package.
    // =============================================================================
    
    //==============================================================================
    // Benchmark for chol function
    //==============================================================================
    
    // <-- BENCH NB RUN : 10 -->
    
    `stacksize`_(30000000);
    
    a = 0;
    b = 0;
    a = `rand`_(900, 900, 'n');
    a = a'*a;
    
    // <-- BENCH START -->
    b = `chol`_(a);
    // <-- BENCH END -->


The result of the test


::

    -->bench_run('linear_algebra','bench_chol')
    
               For Loop (as reference) ...........................      143.00 ms [ 1000000 x]
    
      001/001 - [linear_algebra] bench_chol ......................      130.60 ms [      10 x]




See Also
~~~~~~~~


+ `test_run`_ Launch tests


.. _test_run: test_run.html


