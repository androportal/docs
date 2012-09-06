


assert_cond2reltol
==================

Suggests a relative error, computed from the condition number.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    rtol = assert_cond2reltol ( condition )
    rtol = assert_cond2reltol ( condition , offset )




Parameters
~~~~~~~~~~

:condition : a matrix of doubles, the condition number. The condition
  number must be strictly positive.
: :offset : a matrix of doubles, a shift for the number of required
  decimal digits (default offset=0). For example, offset=1 increases the
  accuracy requirement (decreases the relative tolerance by a factor
  10^-1), offset=-1 decreases the accuracy requirement (increases the
  relative tolerance by a factor 10^1).
: :rtol : a matrix of doubles, the relative tolerance. The relative
  tolerance is strictly positive, lower than 1.
:



Description
~~~~~~~~~~~

Depending on the condition number, returns the corresponding relative
tolerance.

Any optional parameter equal to the empty matrix [] is set to its
default value.

We emphasize that this relative tolerance is only a suggestion.
Indeed, there may be correct reasons of using a lower or a higher
relative tolerance.



+ Consider the case where an excellent algorithm is able to make
  accurate computations, even for an ill-conditionned problem. In this
  case, we may require more accuracy (positive offset).
+ Consider the case where there is a trade-off between performance and
  accuracy, where performance wins. In this case, we may require less
  accuracy (negative offset).



Any scalar input argument is expanded to a matrix of doubles of the
same size as the other input arguments.

We compute the number of required digits d, then the relative
tolerance is 10^-d.





Examples
~~~~~~~~


::

    assert_cond2reltol ( 0 ) // 1.110D-16
    assert_cond2reltol ( 1 ) // 1.110D-16
    assert_cond2reltol ( 1.e1 ) // 1.110D-15
    assert_cond2reltol ( 1.e2 ) // 1.110D-14
    assert_cond2reltol ( 1.e3 ) // 1.110D-13
    assert_cond2reltol ( 1.e16 ) // 1
    assert_cond2reltol ( 1.e17 ) // 1
    assert_cond2reltol ( 1.e18 ) // 1
    
    // Matrix input.
    condition = [0,1,10,100,1000,1.D13,1.D14,1.D15,1.D16,1.D17,1.D18];
    expected = [1.110D-16    1.110D-16    1.110D-15    1.110D-14    1.110D-13    0.0011102    0.0111022    0.1110223    1.    1.    1.];
    assert_cond2reltol ( condition )
    
    // Using offset
    // Negative offset : require less accuracy
    assert_cond2reltol ( 1.e2 , [0 -1] ) // [1.1D-14 1.1D-13]
    // Positive offset : requires more accuracy
    // See that the impact of offset is constrained.
    assert_cond2reltol ( 1.e2 , [0 1 2 3] ) // [1.1D-14 1.1D-15 1.1D-16 1.1D-16]
    // Negative offset
    // See that the impact of offset is constrained.
    assert_cond2reltol ( 1.e14 , [0 -1 -2 -3] ) // [1.1D-02    1.1D-01    1 1]
    
    // Plot the relative tolerance depending on the condition
    condition = `logspace`_(0,18,1000);
    r = assert_cond2reltol ( condition );
    `plot`_(condition,r)
    h=`gcf`_();
    h.children.log_flags="lln";
    h.children.children.children.thickness=4;
    xt = h.children.x_ticks;
    xt.locations = 10^(0:2:18)';
    xt.labels = ["10^0";"10^2";"10^4";"10^6";"10^8";"10^10";"10^12";"10^14";"10^16";"10^18"];
    h.children.x_ticks=xt;
    yt = h.children.y_ticks;
    yt.locations = 10^-(0:2:18)';
    yt.labels = ["10^0";"10^-2";"10^-4";"10^-6";"10^-8";"10^-10";"10^-12";"10^-14";"10^-16";"10^-18"];
    h.children.y_ticks=yt;
    `xtitle`_("Relative tolerance","Condition","Relative tolerance");
    r = assert_cond2reltol ( condition , +3 );
    `plot`_(condition,r,"r")
    r = assert_cond2reltol ( condition , -3 );
    `plot`_(condition,r,"g")
    `legend`_(["Offset=0","Offset=+3","Offset=-3"]);




History
~~~~~~~
Version Description 5.4.0 Function introduced


