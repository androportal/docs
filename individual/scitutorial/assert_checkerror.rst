


assert_checkerror
=================

Check that an instruction produces the expected error.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    flag = assert_checkerror ( instr , expectedmsg )
    flag = assert_checkerror ( instr , expectedmsg , expectederrnb )
    flag = assert_checkerror ( instr , expectedmsg , expectederrnb , a1, ... )
    [flag,errmsg] = assert_checkerror ( ... )




Parameters
~~~~~~~~~~

:instr: a 1-by-1 matrix of strings, an expression to evaluate
: :expectedmsg : a string or a string vector, the error message to be
  produced
: :expectederrnb : a 1-by-1 matrix of doubles, integer values, the
  error number (default expectederrnb=[]).
: :a1 : an extra localization argument, passed to the `msprintf`
  function.
: :flag : a 1-by-1 matrix of boolean, %t if the correct error message
  was produced, %f if not
: :errmsg : a 1-by-1 matrix of strings, the error message. If
  flag==%t, then errormsg=="". If flag==%f, then errmsg contains the
  error message.
:



Description
~~~~~~~~~~~

If the expression does not generate an error, then `assert_checkerror`
generates an error. Performs silently if the evaluated expression
generates the expected error message.

If the error message `expectedmsg` is provided and is not the empty
matrix `[]`, we check that the generated error number matches the
expected one. If the error number `expectederrnb` is provided and is
not the empty matrix `[]`, we check that the generated error number
matches the expected one. If the error message `expectedmsg` and the
error number `expectederrnb` cannot be equal to the empty matrix `[]`
at the same time: at least one of them must be provided.

The string matching is strict string equality: no pattern or regular
expression can be used.

If the error message is not expected or the error number is not
expected,

+ if the errmsg output variable is not used, an error is generated,
+ if the errmsg output variable is used, no error is generated.



The goal of this function is to enable the tester to check the error
cases in a simplified framework. Checking the error messages of a
function has the following advantages:

+ it checks that the correct error is generated when needed,
+ it checks that the error message is correctly formatted,
+ it checks that the error message is correctly localized.



The expected message can be a localized message. In this case, the
message is compared with the output of the `gettext` function, and
depends on the local language. The extra argument `a1` can be used for
this purpose, for example to format the localized message. All the
extra arguments `a1`, `a2`, ... are automatically passed to the
`msprintf` function before being compared to the computed error
message.



Examples
~~~~~~~~

We give several examples of using the `assert_checkerror` function. We
first have to define a function to be tested.

The following function `f` generates an error when the number of input
arguments in wrong or the type of `x` is wrong.


::

    function y=f(x)
          [lhs, rhs] = `argn`_()
          if ( rhs <> 1 ) then
          lstr = `gettext`_("%s: Wrong number of input argument: %d expected.\n")
          errmsg = `msprintf`_ ( lstr , "f" , 1 )
          `error`_(errmsg)
          end
          if ( `typeof`_(x) <> "constant" ) then
          lstr = `gettext`_("%s: Wrong type for argument %d: Matrix expected.\n")
          errmsg = `msprintf`_ ( lstr , "f" , 1 )
          `error`_(errmsg,123456789)
          end
          y = x
          endfunction


Our task is to check the error messages produced by this function. The
two following tests pass: the error message is the expected one. We
let `assert_checkerror` manage the localization, by providing only the
localized message and the extra parameter `"f"` (the name of the
function) and `1` (the index of the input argument). These two extra
parameters are used by `assert_checkerror` to format the message and
to convert the "%s" and "%d" formats into their actual values.


::

    lcl1 = "%s: Wrong number of input argument: %d expected.\n";
          assert_checkerror ( "y = f()"      , lcl1 , [] , "f" , 1);
          
          lcl2 = "%s: Wrong type for argument %d: Matrix expected.\n";
          assert_checkerror ( "y = f(""a"")" , lcl2 , [] , "f" , 1);


On the other hand, if we make the assumption that the current locale
language is english, we could as well use the following statement. But
this is not a recommended practice, since the test will fail if the
current locale is French, for example.


::

    assert_checkerror ( "y = f()" , "f: Wrong number of input argument: 1 expected." );


In the following test, we also check the error number.


::

    lcl1="%s: Wrong number of input argument: %d expected.\n";
          assert_checkerror ( "y=f()" ,      lcl1 , 10000     , "f" , 1);
          
          lcl2 = "%s: Wrong type for argument %d: Matrix expected.\n";
          assert_checkerror ( "y=f(""a"")" , lcl2 , 123456789 , "f" , 1);


The two following tests fail.


::

    assert_checkerror ( "y = f()" , "oups" );
          
          msg1 = `msprintf`_(`gettext`_("%s: Wrong number of input argument: %d expected.\n"), "f", 1);
          assert_checkerror ( "y = f()" , msg1 , 12 );


When errmsg is given as output argument, no error is generated, as in
the following example. Notice the content of the `flag` and `errmsg`
variables.


::

    // A test which pass: flag is %t, errmsg is empty
          msg1 = `msprintf`_(`gettext`_("%s: Wrong number of input argument: %d expected.\n"), "f", 1);
          [flag, errmsg] = assert_checkerror ( "y = f()" , msg1 )
          
          // A test which fail: flag is %f, errmsg is not empty
          [flag, errmsg] = assert_checkerror ( "y = f()" , "oups" )


The messages in the two following tests are localized, so that they
can work whatever the current language is. Instead of using the extra
parameter `a1`, we directly localize the message, which is less short,
but is a perfectly valid code.


::

    msg1 = `msprintf`_(`gettext`_("%s: Wrong number of input argument: %d expected.\n"), "f", 1);
          assert_checkerror ( "y = f()"      , msg1 );
          
          msg2 = `msprintf`_(`gettext`_("%s: Wrong type for argument %d: Matrix expected.\n"), "f", 1);
          assert_checkerror ( "y = f(""a"")" , msg2 );


It may happen that we want to just test the error number, but not the
error message. The following script just checks that the generated
error number is 123456789 when the first argument is not a matrix of
doubles: we do not check the error message.


::

    assert_checkerror("f(""foo"")", [], 123456789);




History
~~~~~~~
Version Description 5.4.0 Function introduced


