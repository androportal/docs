


assert_checkalmostequal
=======================

Check that computed and expected are numerically close.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    flag = assert_checkalmostequal ( computed , expected )
    flag = assert_checkalmostequal ( computed , expected , reltol )
    flag = assert_checkalmostequal ( computed , expected , reltol , abstol )
    flag = assert_checkalmostequal ( computed , expected , reltol , abstol , comptype )
    [flag,errmsg] = assert_checkalmostequal ( ... )




Parameters
~~~~~~~~~~

:computed: a matrix of doubles, a sparse matrix of doubles, or an
  hypermatrix of doubles, the computed result
: :expected : a matrix of doubles, a sparse matrix of doubles, or an
  hypermatrix of doubles, the expected result
: :reltol : a 1-by-1 matrix of doubles, the relative tolerance
  (default reltol=sqrt(%eps)).
: :abstol : a 1-by-1 matrix of doubles, the absolute tolerance
  (default abstol=0).
: :comptype : a 1-by-1 matrix of strings, "matrix" or "element"
  (default comptype="element"). The comparison type.
: :flag : a 1-by-1 matrix of boolean, %t if computed is close to
  expected, %f if not
: :errmsg : a 1-by-1 matrix of strings, the error message. If
  flag==%t, then errormsg=="". If flag==%f, then errmsg contains the
  error message.
:



Description
~~~~~~~~~~~

Performs silently if the two matrices of doubles or complex doubles
computed and expected are close. The variables computed and expected
can be exchanged without changing the result.

Any optional input argument equal to the empty matrix is replaced by
its default value.

We use the following algorithm. We compare first the real parts. In
case of equality, we compare the imaginary parts.

The condition used is mixed relative and absolute:

::

    ( |e-c| <= reltol * `max`_(|e|,|c|) + abstol )

If comptype="matrix", the norm is used. If comptype="element", the
absolute value are used and the two matrices are almost equal if all
the conditions are true.

The default value comptype="matrix" option performs the comparison for
the matrices as a whole, the norm of the difference of the matrices is
used. The comptype="element" option performs the comparison
elementwise, i.e. all the elements of the matrices must be almost
equal. Choosing between these two comparison types must be done with
care. For example, if we are checking the elementwise output of an
elementary function, we should choose the "element" comparison type,
since we must compare the matrix elements one after the other.

If the IEEE values %inf, -%inf or %nan values are in the matrices,
then they are almost equal only if the IEEE values are at the same
indices in the matrices.

The default comparison is based on a relative error, ensuring that 8
digits are common. This allows to assert the number of significant
digits in the computed result.

This procedure only works when the computed and expected variables are
matrices of doubles. It will generate an error in any other case.

If the comparison shows that computed is not almost equal to expected,

+ if the errmsg output variable is not used, an error is generated,
+ if the errmsg output variable is used, no error is generated.



In the process of comparing the values, we separate %nan, +%inf, -%inf
and remaining values. Comparing nan values between them is not
possible. This is why we compare the indices where %nan value occurs.
If we form differences of infinity values, we produce %nan values.
This is why we compare the indices where +%inf values occurs. We do
the same for -%inf values. Then, the non-nan, non-infinity values are
actually compared.

The default comptype="element" option performs the comparison
elementwise, i.e. all the elements of the matrices must be almost
equal. The comptype="matrix" option performs the comparison for the
matrices as a whole, the norm of the difference of the matrices is
used.

In general, the relative tolerance should be set to a multiple of the
machine precision %eps. The relative tolerance should also be chosen
with the lowest possible magnitude, that is, we shoud configure the
tolerance as accurately as possible. During the process of configuring
the relative tolerance, we suggest to use the following values, in
that order : 0 (all digits correct), %eps, 10*%eps, 100*%eps,
1.e3*%eps, 1.e4*%eps, ..., 1.e17*%eps (no digit correct). See below
for examples of this.

This function takes into account for complex numbers. We first compare
the real parts of the input arguments. If this fails, we immediately
return. If this succeeds, we compare the imaginary parts of the input
arguments.





Examples
~~~~~~~~


::

    // Comparisons which are successful.
    // Relative error :
    assert_checkalmostequal ( 1 , 1 );
    assert_checkalmostequal ( 1 , 1 , %eps );
    assert_checkalmostequal ( `ones`_(10,1) , `ones`_(10,1) , %eps );
    // Absolute error :
    assert_checkalmostequal ( 1.23456789123456789e-30 , 0 , 0 , 1.e-10 );
    assert_checkalmostequal ( [1 %nan], [1 %nan] , 0 , %eps );
    
    // Comparisons which are failures.
    // Error message produced :
    assert_checkalmostequal ( 1 , 2 , %eps );
    // Error message produced :
    flag = assert_checkalmostequal ( 1 , 2 , %eps )
    // No error message produced :
    [flag,errmsg] = assert_checkalmostequal ( 1 , 2 , %eps )
    assert_checkalmostequal ( 1 , [2 3] , %eps );
    assert_checkalmostequal ( [%nan 1], [1 %nan] , %eps );
    assert_checkalmostequal ( 1 + 5 * %eps , 1 , %eps );
    assert_checkalmostequal ( 1.23456789123456789e-30 , 1.3e-30 , %eps );
    
    // In the case where expected is nonzero, the
    // tolerance for relative error should be a
    // multiple of %eps.
    // The following test is a success and shows
    // that less than 11 digits are lost with respect
    // to the maximum possible accuracy.
    assert_checkalmostequal ( 1.23456 , 1.23457 , 1.e11*%eps );
    
    // We cannot exchange the relative and absolute tolerances.
    // The following test pass: we use an absolute tolerance
    // because the expected value is zero.
    assert_checkalmostequal ( 1.23456789e-30 , 0 , 0 , 1.e-10 );
    // The following test fail: we use a relative tolerance.
    assert_checkalmostequal ( 0 , 1.23456789e-30 , 1.e-10 );
    
    // We must configure the tolerance as tightly as possible.
    // The following test fails, because the tolerance is too small
    // with respect to the given numbers.
    assert_checkalmostequal ( 1.23456 , 1.23457 , %eps );
    // In order to get the number of common digits:
    `assert_computedigits`_(1.23456 , 1.23457)
    // which returns 5.09...
    // We now make a judgment on the accuracy and conclude it is acceptable:
    assert_checkalmostequal ( 1.23456 , 1.23457 , 1.e-5 );
    
    // We give here a practical example of the use of assert_checkalmostequal.
    // We solve an averagely ill-conditionned system of linear
    // equations, based on the Hilbert matrix.
    n = 6;
    // The expected value is set by ourselves.
    expected = `ones`_(n,1);
    A = `testmatrix`_("hilb",n);
    // We compute the condition number of the matrix : ~10^8
    `ceil`_(`log10`_(`cond`_(A)))
    // This means that the number of digits lost,
    // predicted by theory, is 8.
    // The right-hand side is computed given A and expected.
    b = A * expected;
    // In this case, a Gauss algorithm with partial
    // pivoting is used.
    computed = A\b;
    // The following test fails: we have lost some digits.
    assert_checkalmostequal(computed,expected,%eps)
    // We compute the actual number of common digits: from 10 to 12
    `assert_computedigits`_(computed, expected)
    // We accept this computation.
    // The following test pass.
    assert_checkalmostequal(computed,expected,1.e5*%eps);
    
    // The following examples show the difference between comptype="element" and "matrix".
    // The following test does not pass.
    assert_checkalmostequal ( [1 1.e5] , [2 1.e5] , 1.e-3 )
    // The following test pass with the matrix-based comparison.
    assert_checkalmostequal ( [1 1.e5] , [2 1.e5] , 1.e-3 , [] , "matrix" )
    
    // The following test pass.
    // It is non-trivial to take into account for IEEE values.
    [flag,errmsg] = assert_checkalmostequal ( [1.2345 %inf -%inf %nan] , [1.2346 %inf -%inf %nan] , 1.e-4 )
    
    // This function takes into account for complex numbers.
    // The following test pass.
    assert_checkalmostequal ( 1+%i , 1+(1+1.e-4)*%i , 1.e-3 , [], "element" );
    // The following test fails.
    assert_checkalmostequal ( 1+%i , 1+(1+1.e-4)*%i , 1.e-5 , [], "element" );




History
~~~~~~~
Version Description 5.4.0 Function introduced


