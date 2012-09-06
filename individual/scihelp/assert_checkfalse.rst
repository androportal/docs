


assert_checkfalse
=================

Check that condition is false.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    flag = assert_checkfalse ( condition )
    flag = assert_checkfalse ( condition )
    [flag,errmsg] = assert_checkfalse ( condition )




Parameters
~~~~~~~~~~

:condition: a matrix of booleans
: :flag : a 1-by-1 matrix of boolean, %t if condition is false, %f if
  not
: :errmsg : a 1-by-1 matrix of strings, the error message. If
  flag==%t, then errormsg=="". If flag==%f, then errmsg contains the
  error message.
:



Description
~~~~~~~~~~~

Performs silently if all entries in `condition` are false.

Generates an error if any entry in `condition` is true. Generates an
error if `condition` is not a boolean.

If any entry in condition is true,

+ if the errmsg output variable is not used, an error is generated,
+ if the errmsg output variable is used, no error is generated.







Examples
~~~~~~~~


::

    // Tests which pass
    assert_checkfalse ( %f );
    flag = assert_checkfalse ( %f )
    [flag,errmsg] = assert_checkfalse ( %f )
    [flag,errmsg] = assert_checkfalse ( [%f %f] );
    
    // Tests which fail
    assert_checkfalse ( [%t %f] );
    flag = assert_checkfalse ( [%t %f] )
    // No error generated
    [flag,errmsg] = assert_checkfalse ( [%t %f] )
    
    // Wrong calls
    assert_checkfalse ( "a" )




History
~~~~~~~
Version Description 5.4.0 Function introduced


