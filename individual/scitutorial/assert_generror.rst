


assert_generror
===============

Generates an error.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    assert_generror ( errormsg )
    assert_generror ( errormsg , errornb )




Parameters
~~~~~~~~~~

:expectedmsg : a 1-by-1 matrix of strings, the error message to be
  produced
: :expectederrnb : a 1-by-1 matrix of doubles, integer values, the
  error number (default expectederrnb=[]).
:



Description
~~~~~~~~~~~

Calls the error function, with the given arguments.

This function is called by the assert_check* function each time an
error produced by the wrong match between expected and computed
outputs is generated. In the case where an assert_check* function
receives a wrong number of input arguments, a wrong number of output
arguments, a wrong type of input argument or a wrong content of input
arguments, the regular error function is called. This function can be
customized to modify the behaviour of the assert_check* functions.





Examples
~~~~~~~~


::

    // Both these calls generate an error
    assert_generror ( "oups" );
    assert_generror ( "oups" , 123456789 );
    
    // The following call generates an error.
    `assert_checktrue`_ ( [%t %f] );
    //
    // Define our own error handler
    function myerror(varargin)
        [lhs,rhs]=`argn`_()
        errormsg = varargin(1)
        if ( rhs == 1 ) then
            `mprintf`_( "myerror: %s\n", errormsg )
        else
            errornb = varargin(2)
            `mprintf`_( "myerror: %s (%d)\n", errormsg , errornb )
        end
    endfunction
    //
    // Configure the new error handler
    back=`funcprot`_();
    `funcprot`_(0);
    olderrorfunction = assert_generror;
    assert_generror = myerror;
    `funcprot`_(back);
    //
    // Check that the new error handler is in place
    `assert_checktrue`_ ( [%t %f] );
    //
    // Put back the regular error handler in place
    back=`funcprot`_();
    `funcprot`_(0);
    assert_generror = olderrorfunction;
    `funcprot`_(back);




History
~~~~~~~
Version Description 5.4.0 Function introduced


