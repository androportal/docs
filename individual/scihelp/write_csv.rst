


write_csv
=========

writes comma-separated value file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    write_csv(M, filename [,sep, dec])




Arguments
~~~~~~~~~

:filename a character string. The file path.
: :M a matrix of strings.
: :sep column separator mark, by default a tabulation: `ascii(9)` or
  `"\t"`.
: :dec decimal mark `'.'` or `','`. By default: `','`
:



Description
~~~~~~~~~~~

`write_csv(M, filename)` writes matrix `M` into file `filename` as
tab-separated values. The `filename` input is a string.

If the file 'filename' already exists, it is overwritten.



Examples
~~~~~~~~


::

    // save a matrix as csv file format
          A = [1:10] * 0.1;
          write_csv(A, TMPDIR + '/data.tsv');
          
          // read as text
          `mgetl`_(TMPDIR + '/data.tsv')
          
          //tab-separated values
          r = `read_csv`_(TMPDIR + '/data.tsv', `ascii`_(9));
          r = `strsubst`_(r, ',' , '.');
          `evstr`_(r)
          
          A = [1:10] * 0.1; 
          write_csv(A', TMPDIR+'/foo.csv', ' ', '.');
          `mgetl`_(TMPDIR+'/foo.csv')
          
          //tab-separated values
          write_csv(A, TMPDIR + '/datas.tsv');
          
          //coma-separated values
          write_csv(A, TMPDIR + '/datas.csv', ';');




See Also
~~~~~~~~


+ `read_csv`_ reads comma-separated value file
+ `evstr`_ evaluation of expressions
+ `mgetl`_ reads lines from an text file
+ `format`_ number printing and display format


.. _evstr: evstr.html
.. _mgetl: mgetl.html
.. _format: format.html
.. _read_csv: read_csv.html


