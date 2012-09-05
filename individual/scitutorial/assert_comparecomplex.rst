


assert_comparecomplex
=====================

Compare complex numbers with a tolerance.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    order = assert_comparecomplex ( a , b )
    order = assert_comparecomplex ( a , b , reltol )
    order = assert_comparecomplex ( a , b , reltol , abstol )




Parameters
~~~~~~~~~~

:a : a 1-by-1 matrix of doubles, the first value to be compared
: :b : a 1-by-1 matrix of doubles, the second value to be compared
: :reltol : a 1-by-1 matrix of doubles, the relative tolerance
  (default reltol=sqrt(%eps)).
: :abstol : a 1-by-1 matrix of doubles, the absolute tolerance
  (default abstol=0).
: :order : a 1-by-1 matrix of doubles, integer values, the order.
  Returns order=0 is a is almost equal to b, order=-1 if a < b, order=+1
  if a > b.
:



Description
~~~~~~~~~~~

Compare first by real parts, then by imaginary parts. Takes into
account numerical accuracy issues, by using a mixed relative and
absolute tolerance criteria.

Any optional input argument equal to the empty matrix is replaced by
its default value.

We use the following algorithm.

We compare first the real parts. In case of tie, we compare the
imaginary parts.

We process the IEEE values and choose the order : -%inf < 0 < %inf <
%nan. If none of the values is special, we use the condition :

::

    `cond`_ = ( abs(a-b) <= reltol * max(abs(a),`abs`_(b)) + abstol )



This algorithm is designed to be used into sorting algorithms. It
allows to take into account for the portability issues related to the
outputs of functions producing matrix of complex doubles. If this
algorithm is plugged into a sorting function, it allows to
consistently produce a sorted matrix, where the order can be
independent of the operating system, the compiler or other forms of
issues modifying the order (but not the values).





Examples
~~~~~~~~


::

    // Compare real values
    assert_comparecomplex ( 1 , -1 ) // 1
    assert_comparecomplex ( -1 , 1 ) // -1
    assert_comparecomplex ( 1 , 1 ) // 0
    
    // Compare complex values #1
    assert_comparecomplex ( 1+2*%i , 1+3*%i ) // -1
    assert_comparecomplex ( 1+3*%i , 1+2*%i ) // 1
    assert_comparecomplex ( 1+2*%i , 1+2*%i ) // 0
    
    // Compare complex values #2
    assert_comparecomplex ( 1+%i , -1+%i ) // 1
    assert_comparecomplex ( -1+%i , 1+%i ) // -1
    assert_comparecomplex ( 1+%i , 1+%i ) // 0
    [order,msg] = assert_comparecomplex ( 1+%i , 1+%i )
    
    // Compare with tolerances : equality cases
    assert_comparecomplex ( 1.2345+%i , 1.2346+%i , %eps , 1.e-3 ) // 0
    assert_comparecomplex ( 1.2345+%i , 1.2346+%i , 1.e12*%eps , 0 ) // 0
    assert_comparecomplex ( 1+1.2345*%i , 1+1.2347*%i , %eps , 1.e-3 ) // 0
    assert_comparecomplex ( 1+1.2345*%i , 1+1.2347*%i , 1.e12*%eps , 0 ) // 0
    
    // Compare more realistic data
    x = [
    -0.123452 - 0.123454 * %i
    -0.123451 + 0.123453 * %i
    0.123458 - 0.123459 * %i
    0.123456 + 0.123457 * %i
    ];
    // Consider less than 4 significant digits
    for i = 1 : `size`_(x,"*")-1
    order = assert_comparecomplex ( x(i) , x(i+1) , 1.e-4 );
    `mprintf`_("compare(x(%d),x(%d))=%d\n",i,i+1,order)
    end
    
    // Compare data from bug #415
    x = [
    -1.9914145
    -1.895889
    -1.6923826
    -1.4815461
    -1.1302576
    -0.5652256 - 0.0655080 * %i
    -0.5652256 + 0.0655080 * %i
    0.3354023 - 0.1602902 * %i
    0.3354023 + 0.1602902 * %i
    1.3468911
    1.5040136
    1.846668
    1.9736772
    1.9798866
    ];
    // Consider less than 4 significant digits
    for i = 1 : `size`_(x,"*")-1
    order = assert_comparecomplex ( x(i) , x(i+1) , 1.e-5 );
    `mprintf`_("compare(x(%d),x(%d))=%d\n",i,i+1,order)
    end




History
~~~~~~~
Version Description 5.4.0 Function introduced


Bibliography
~~~~~~~~~~~~

http://gitweb.scilab.org/?p=scilab.git;a=blob;f=scilab/modules/polynom
ials/tests/nonreg_tests/bug_415.tst;h=0c716a3bed0dfb72c831972d19dbb081
4dffde2b;hb=HEAD

http://gitweb.scilab.org/?p=scilab.git;a=blob_plain;f=scilab/modules/c
acsd/tests/nonreg_tests/bug_68.tst;h=920d091d089b61bf961ea9e888b4d7d46
9942a14;hb=4ce3d4109dd752fce5f763be71ea639e09a12630



