


condestsp
=========

estimate the condition number of a sparse matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [K1] = condestsp(A, LUp, t)
    [K1] = condestsp(A, LUp)
    [K1] = condestsp(A, t)
    [K1] = condestsp(A)




Arguments
~~~~~~~~~

:A a real or complex square sparse matrix
: :LUp (optional) a pointer to (umf) LU factors of A obtained by a
  call to umf_lufact ; if you have already computed the LU (= PAQ)
  factors it is recommended to give this optional parameter (as the
  factorization may be time consuming)
: :t (optional) a positive integer (default value 2) by increasing
  this one you may hope to get a better (even exact) estimate
: :K1 estimated 1-norm condition number of A
:



Description
~~~~~~~~~~~

Give an estimate of the 1-norm condition number of the sparse matrix A
by Algorithm 2.4 appearing in :


::

    "A block algorithm for matrix 1-norm estimation
     with an application to 1-`norm`_ pseudospectra"
     Nicholas J. Higham `and`_ Francoise Tisseur
     Siam J. Matrix Anal. Appl., vol 21, No 4, pp 1185-1201


Noting the exact condition number `K1e = ||A||_1 ||A^(-1)||_1`, we
have always `K1 <= K1e` and this estimate gives in most case something
superior to `1/2 K1e`



Examples
~~~~~~~~


::

    A = `sparse`_( [ 2  3  0  0  0;
                  3  0  4  0  6; 
                  0 -1 -3  2  0; 
                  0  0  1  0  0; 
                  0  4  2  0  1] );
    K1 = condestsp(A)
    // verif by direct computation
    K1e = `norm`_(A,1)*`norm`_(`inv`_(`full`_(A)),1)
    
    // another example
    [A] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/arc130.rua");
    K1 = condestsp(A)
    // this example is not so big so that we can do the verif
    K1e = `norm`_(A,1)*`norm`_(`inv`_(`full`_(A)),1)
    
    // if you have already the lu factors condestsp(A,Lup) is faster
    // because lu factors are then not computed inside condestsp
    Lup = `umf_lufact`_(A);   
    K1 = condestsp(A,Lup)
    `umf_ludel`_(Lup)         // clear memory




See Also
~~~~~~~~


+ `umf_lufact`_ lu factorisation of a sparse matrix
+ `rcond`_ inverse condition number


.. _rcond: rcond.html
.. _umf_lufact: umf_lufact.html


