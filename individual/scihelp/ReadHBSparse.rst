


ReadHBSparse
============

read a Harwell-Boeing sparse format file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [A, description, ref, mtype] = ReadHBSparse([filename])




Arguments
~~~~~~~~~

:filename (optional) a string given the filename (eventually
  preceeding by the path), if filename is not given then the function
  use `uigetfile`_ to get filename interactively
: :A the sparse matrix
: :description a string given some information about the matrix
: :ref a string given the reference of the matrix
: :mtype a string given the type of the matrix
:



Description
~~~~~~~~~~~

An utility to read the Harwell-Boeing sparse matrix format. Currently
do not work for unassembled matrix. Also the eventual rhs vectors of
the file are not returned. Generally the file name is of the form
ref.mtype where mtype is a 3 letters word abc given some information
(already inside the file) on the matrix :


::

    a = R|C|P   for `real`_|`complex`_|pattern (no values given)
    b = S|H|Z|U for symmetric|hermitian|skew symmetric|asymmetric
    c = A|E     for assembled|unassembled `matrix`_ 
                (case E is not treated by this func)




References
~~~~~~~~~~

Users' Guide for the Harwell-Boeing Sparse Matrix Collection Iain S.
Duff, Roger G. Grimes, John G. Lewis. You may found this guide and
numerous sparse matrices (in the Harwell-Boeing format) at the
University of Florida Sparse Matrix Collection

web site : `http://www.cise.ufl.edu/research/sparse/matrices/`_

maintained by Tim Davis (`http://www.cise.ufl.edu/~davis/`_)



Examples
~~~~~~~~


::

    [A] = ReadHBSparse(SCI+"/modules/umfpack/examples/arc130.rua");




See Also
~~~~~~~~


+ `PlotSparse`_ plot the pattern of non nul elements of a sparse
  matrix


.. _PlotSparse: PlotSparse.html
.. _http://www.cise.ufl.edu/research/sparse/matrices/: http://www.cise.ufl.edu/research/sparse/matrices/
.. _http://www.cise.ufl.edu/~davis/: http://www.cise.ufl.edu/~davis/
.. _uigetfile: uigetfile.html


