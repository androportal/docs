


assert_checkequal
=================

Check that computed and expected are equal.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    assert_checkequal ( computed , expected )
    flag = assert_checkequal ( computed , expected )
    [flag,errmsg] = assert_checkequal ( computed , expected )




Parameters
~~~~~~~~~~

:computed: the computed result
: :expected : the expected result
: :flag : a 1-by-1 matrix of boolean, %t if computed is equal to
  expected, %f if not
: :errmsg : a 1-by-1 matrix of strings, the error message. If
  flag==%t, then errormsg=="". If flag==%f, then errmsg contains the
  error message.
:



Description
~~~~~~~~~~~

Performs silently if computed and expected are equal.

If the type of both input arguments is 1 (i.e. a real matrix), we
check that non-nan values are equal.

We compare first the real parts. In case of equality, we compare the
imaginary parts.

If the comparison shows that computed is equal to expected,

+ if the errmsg output variable is not used, an error is generated,
+ if the errmsg output variable is used, no error is generated.





Examples
~~~~~~~~


::

    // Tests with success
    assert_checkequal ( %T , %T );
    flag = assert_checkequal ( `list`_() , `list`_() );
    [flag , errmsg] = assert_checkequal ( [%T %F], [%T %F] );
    assert_checkequal ( %nan , %nan );
    
    // Tests with failure
    assert_checkequal ( %F , %T );
    flag = assert_checkequal ( %F , %T );
    // No error produced :
    [flag , errmsg] = assert_checkequal ( %F , %T )
    assert_checkequal ( [1 2], [3 4] )
    assert_checkequal ( 1 , [2 3] )
    assert_checkequal ( 1 , "b" )




History
~~~~~~~
Version Description 5.4.0 Function introduced


Bibliography
~~~~~~~~~~~~

"Automated Software Testing for Matlab", Steven Eddins, 2009



