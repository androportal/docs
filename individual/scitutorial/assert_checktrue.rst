


assert_checktrue
================

Check that condition is true.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    flag = assert_checktrue ( condition )
    flag = assert_checktrue ( condition )
    [flag,errmsg] = assert_checktrue ( condition )




Parameters
~~~~~~~~~~

:condition: a matrix of booleans
: :flag : a 1-by-1 matrix of boolean, %t if condition is true, %f if
  not
: :errmsg : a 1-by-1 matrix of strings, the error message. If
  flag==%t, then errormsg=="". If flag==%f, then errmsg contains the
  error message.
:



Description
~~~~~~~~~~~

Performs silently if all entries in `condition` are true.

Generates an error if any entry in the `condition` matrix is false.
Generates an error if `condition` is not a boolean.

If any entry in condition is false,

+ if the errmsg output variable is not used, an error is generated,
+ if the errmsg output variable is used, no error is generated.







Examples
~~~~~~~~


::

    // Tests which pass
    assert_checktrue ( %t );
    flag = assert_checktrue ( %t )
    [flag,errmsg] = assert_checktrue ( %t )
    [flag,errmsg] = assert_checktrue ( [%t %t] );
    
    // Tests which fail
    assert_checktrue ( [%t %f] );
    flag = assert_checktrue ( [%t %f] )
    // No error generated
    [flag,errmsg] = assert_checktrue ( [%t %f] )
    
    // Wrong calls
    assert_checktrue ( "a" )




History
~~~~~~~
Version Description 5.4.0 Function introduced


