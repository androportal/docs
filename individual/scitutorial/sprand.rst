


sprand
======

sparse random matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sp=sprand(nrows,ncols,density [,typ])




Arguments
~~~~~~~~~

:nrows integer (number of rows)
: :ncols integer (number of columns)
: :density filling coefficient (density)
: :typ character string, `"uniform"` (default) or `"normal"`
: :sp sparse matrix
:



Description
~~~~~~~~~~~

`sp=sprand(nrows,ncols,density)` returns a sparse matrix `sp` with
`nrows` rows, `ncols` columns and approximately `density*nrows*ncols`
non-zero entries.

The `density` parameter is expected to be in the `[0,1]` interval. If
not, it is automatically projected into this interval. Therefore,
using a density which is lower than 0 or greater than 1 will generate
neither an error, nor a warning: the formula
`density=max(min(density,1),0)` is used.

If `typ="uniform"` uniformly distributed values on [0,1] are
generated. If `typ="normal"` normally distributed values are generated
(mean=0 and standard deviation=1).

The entries of the output matrix are computed from the given
distribution function `typ`. The indices of the non-zeros entries are
computed randomly, so that the average number of nonzeros is equal to
`density`. The actual indices values are computed from the exponential
distribution function, where the parameter of the distribution
function is computed accordingly.

As a side effect, the states of the random number generators `rand`
and `grand` are modified by this function. The indices of the nonzeros
entries are computed from an exponential distribution function and the
grand function. The values of the matrix are computed from the
distribution function given by the user (i.e. uniform or normal) and
the rand function.



Examples
~~~~~~~~

In the following example, we generate a 100x1000 sparse matrix with
approximate density 0.001, i.e. with approximately 100*1000*0.001=100
nonzero entries.


::

    // The entries of the matrix are uniform.
    W=sprand(100,1000,0.001);
    // The entries of the matrix are normal.
    W=sprand(100,1000,0.001,"normal");


In the following script, we check that the entries of the matrix have
the expected distribution. We use the spget function in order to get
the nonzero entries. Then we compute the min, mean and max of the
entries and compare them with the limit values.


::

    typ = "normal"; 
    // typ = "uniform";
    nrows = 1000;
    ncols = 2000;
    density = 1/100;
    s=sprand(nrows,ncols,density,typ);
    nnzs=`nnz`_(s);
    [ij,v]=`spget`_(s);
    [%inf -%inf 0 %inf 1] // Limit values for "normal"
    [nnzs `min`_(v) `mean`_(v) `max`_(v) `variance`_(v)]
    [%inf 0 0.5 1 1/12] // Limit values for "uniform"


In the following script, we check that the entry indices, which are
also chosen at random, have the correct distribution. We generate
`kmax` sparse random matrices with uniform distribution. For each
matrix, we consider the indices of the nonzero entries which were
generated, i.e. we see if the event `Aij = {the entry (i,j) is
nonzero}` occurred for each `i` and `j`, for `i=1,2,...,nrows` and
`j=1,2,...,ncols`. The matrix `C(i,j)` stores the number of times that
the event `Aij` occurred. The matrix `R(k)` stores the actual density
of the try number `k`, where `k=1,2,...,kmax`.


::

    kmax = 1000;
    ncols=10;
    nrows=15;
    density=0.01;
    typ="uniform";
    C=`zeros`_(nrows,ncols);
    R=[];
    for k=1:kmax
      M=sprand(nrows,ncols,density,typ);
      NZ=`find`_(M<>0);
      NZratio = `size`_(NZ,"*")/(nrows*ncols);
      R=[R NZratio];
      C(NZ)=C(NZ)+1;
    end


Now that this algorithm has been performed (which may require some
time), we can compute elementary statistics to check that the
algorithm performed well.


::

    // The expectation of A_ij is
    density * kmax
    // Compare this with the actual events :
    C
    // The average number should be close to the expectation.
    [density*kmax `mean`_(C)]
    // The density should be close to expected density
    [density `mean`_(R)]




See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `full`_ sparse to full matrix conversion
+ `rand`_ Random numbers
+ `speye`_ sparse identity matrix


.. _full: full.html
.. _sparse: sparse.html
.. _speye: speye.html
.. _rand: rand.html


