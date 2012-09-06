


read_csv
========

reads comma-separated value file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    M = read_csv(fname [,sep])




Arguments
~~~~~~~~~

:fname a character string. The file path.
: :sep a character string. Field separator used, default value is
  `","`. `ascii(9)` or `"\t"` for a tabulation separator are accepted.
: :M a matrix of strings.
:



Description
~~~~~~~~~~~

Given an ascii file with delimited fields, for instance created by a
spreadsheet using "Text and comma" format, `M = read_csv(fname)`
returns the corresponding Scilab matrix of strings. Use `M =
read_csv(fname,sep)` for another choice of separator.

You may evaluate all or part of `M` using function `evstr` in order to
convert string variables into numeric variables.



Examples
~~~~~~~~


::

    // create a file with some data separated with tab    
          A = 1:50;
          `mputl`_(`strcat`_(`string`_(A),`ascii`_(9)), TMPDIR + '/foo.csv');
          
          // read csv file
          B = read_csv(TMPDIR + '/foo.csv');
          
          // eval B
          C = `evstr`_(B);
          
          // compares original data and result
          `and`_(A == C)




See Also
~~~~~~~~


+ `write_csv`_ writes comma-separated value file
+ `evstr`_ evaluation of expressions


.. _evstr: evstr.html
.. _write_csv: write_csv.html


