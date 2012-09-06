


roots
=====

roots of polynomials



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x=roots(p)
    x=roots(p,algo)




Arguments
~~~~~~~~~

:p a polynomial with real or complex coefficients, or a m-by-1 or
  1-by-m matrix of doubles, the polynomial coefficients in decreasing
  degree order.
: :algo a string, the algorithm to be used (default algo="f"). If
  algo="e", then the eigenvalues of the companion matrix are returned.
  If algo="f", then the Jenkins-Traub method is used (if the polynomial
  is real and has degree lower than 100). If algo="f" and the polynomial
  is complex, then an error is generated. If algo="f" and the polynomial
  has degree greater than 100, then an error is generated.
:



Description
~~~~~~~~~~~

This function returns in the complex vector `x` the roots of the
polynomial `p`.

The "e" option corresponds to method based on the eigenvalues of the
companion matrix.

The "f" option corresponds to the fast RPOLY algorithm, based on
Jenkins-Traub method.

For real polynomials of degree <=100, users may consider the "f"
option, which might be faster in some cases. On the other hand, some
specific polynomials are known to be able to make this option to fail.



Examples
~~~~~~~~

In the following examples, we compute roots of polynomials.


::

    // Roots given a real polynomial
    p = `poly`_([1 2 3],"x")
    roots(p)
    // Roots, given the real coefficients
    p = [3 2 1]
    roots(p)
    // The roots of a complex polynomial
    p=`poly`_([0,10,1+%i,1-%i],'x');
    roots(p)
    // The roots of the polynomial of a matrix
    A=`rand`_(3,3);
    p = `poly`_(A,'x')
    roots(p)
    `spec`_(A)


The polynomial representation can have a significant impact on the
roots. In the following example, suggested by Wilkinson in the 60s and
presented by Moler, we consider a diagonal matrix with diagonal
entries equal to 1, 2, ..., 20. The eigenvalues are obviously equal to
1, 2, ..., 20. If we compute the associated characteristic polynomial
and compute its roots, we can see that the eigenvalues are
significantly different from the expected ones. This implies that just
representing the coefficients as IEEE doubles changes the roots.


::

    A = `diag`_(1:20);
    p = `poly`_(A,'x')
    roots(p)


The "f" option produces an error if the polynomial is complex or if
the degree is greater than 100.


::

    // The following case produces an error.
    p = %i+%s;
    roots(p,"f")
    // The following case produces an error.
    p = `ones`_(101,1);
    roots(p,"f")




See Also
~~~~~~~~


+ `poly`_ polynomial definition
+ `spec`_ eigenvalues of matrices and pencils
+ `companion`_ companion matrix




References
~~~~~~~~~~

The RPOLY algorithm is described in "Algorithm 493: Zeros of a Real
Polynomial", ACM TOMS Volume 1, Issue 2 (June 1975), pp. 178-189

Jenkins, M. A. and Traub, J. F. (1970), A Three-Stage Algorithm for
Real Polynomials Using Quadratic Iteration, SIAM J. Numer. Anal.,
7(1970), 545-566.

Jenkins, M. A. and Traub, J. F. (1970), Principles for Testing
Polynomial Zerofinding Programs. ACM TOMS 1, 1 (March 1975), pp. 26-34



Used Functions
~~~~~~~~~~~~~~

The rpoly.f source codes can be found in the directory
SCI/modules/polynomials/src/fortran of a Scilab source distribution.
In the case where the companion matrix is used, the eigenvalue
computation is perfomed using DGEEV and ZGEEV LAPACK codes.

.. _companion: companion.html
.. _poly: poly.html
.. _spec: spec.html


