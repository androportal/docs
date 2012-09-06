


assert_computedigits
====================

Returns the number of significant digits in computed result.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    d = assert_computedigits ( computed , expected )
    d = assert_computedigits ( computed , expected , basis )




Parameters
~~~~~~~~~~

:computed : a matrix of doubles, the computed value
: :expected : a matrix of doubles, the expected value
: :basis : a 1-by-1 matrix of doubles, integer values, the basis
  (default basis=10)
: :d : a matrix of doubles, the number of significant digits.
:



Description
~~~~~~~~~~~

Computes the number of significant digits in a computed result with
respect to a nonzero expected result, using the formula:



where r is the relative error defined by



Any optional input argument equal to the empty matrix is replaced by
its default value.

The number of significant digits is between dmin = 0 and dmax =
-log10(2^(-53)) which is approximately 15.95 ~ 16. In base 2, the
number of significant bits is 53.

If expected is equal to computed, then d is set to its maximum value,
i.e. dmax. If not, if expected is zero and computed is nonzero, then d
is set to its minimum value, i.e. dmin=0.

The values of computed and expected cannot be exchanged, since the
relative error is based on the expected value.

The computation separates the real part and the imaginary parts of the
values. The returned number of digits is the minimum of the number of
digits for the real and imaginary parts.

TODO : use computedigits inside an assert_digits ( computed , expected
, dmin ) function

TODO : add a comptype option to make the comparison "matrix" (current
is "element")





Examples
~~~~~~~~


::

    d = assert_computedigits ( 1 , 1 ) // d ~ 16
    d = assert_computedigits ( 1 , 1 , 2 ) // d = 53
    d = assert_computedigits ( 0 , 0 ) // d ~ 16
    d = assert_computedigits ( 1 , 0 ) // d = 0
    d = assert_computedigits ( 0 , 1 ) // d = 0
    d = assert_computedigits ( 3.1415926 , %pi ) // d ~ 8
    d = assert_computedigits ( 3.1415926 , %pi , 2 ) // d ~ 26
    d = assert_computedigits ( [0 0 1 1] , [0 1 0 1] ) // d ~ [16 0 0 16]
    d = assert_computedigits(`ones`_(3,2),`ones`_(3,2)) // d ~ 16 * ones(3,2)
    d = assert_computedigits(1.224646799D-16,8.462643383D-18) // d = 0
    
    // Check IEEE values
    // d ~ [16 0 0 0]
    d = assert_computedigits([%nan %nan %nan %nan],[%nan %inf -%inf 0])
    // d ~ [0 16 0 0]
    d = assert_computedigits([%inf %inf %inf %inf],[%nan %inf -%inf 0])
    // d = [0 0 16 0]
    d = assert_computedigits([-%inf -%inf -%inf -%inf],[%nan %inf -%inf 0])
    // d = [0 0 0 16]
    d = assert_computedigits([0 0 0 0],[%nan %inf -%inf 0])
    
    // Check complex values
    d = assert_computedigits ( 1.2345 + %i*6.7891 , 1.23456789 + %i*6.789123456 ) // d ~ 4




History
~~~~~~~
Version Description 5.4.0 Function introduced


