


profile
=======

extract execution profiles of a Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c=profile(fun)




Arguments
~~~~~~~~~

:fun a Scilab function
: :c a nx3 matrix containig the execution profiles
:



Description
~~~~~~~~~~~

To use `profile` the Scilab function must have been prepared for
profiling (see exec).

For such function, When such a function is executed the systems counts
how many time each line is executed and how may cpu time is spend for
each line execution. These data are stored within the function data
structure. The profile function allows to extract these data and
return them in the two first columns of `c`. The `c` third column
gives a measure of interpetor effort for one execution of
corresponding line. Ith line of `c` corresponds to Ith line of the
function (included first)

Note that, due to the precision of the processor clock (typically one
micro second), some executed lignes may appear with 0 cpu time even if
total cpu time really spend in their execution is large.



Examples
~~~~~~~~


::

    //define function and prepare it for profiling
    `deff`_('x=foo(n)',['if n==0 then'
                     '  x=[]'
                     'else'
                     '  x=0'
                     '  for k=1:n'
                     '    s=svd(rand(n+10,n+10))'
                     '    x=x+s(1)'
                     '  end'
                     'end'],'p')
    
    //call the function
    foo(10)
    
    //get execution profiles
    profile(foo)
    
    //call the function
    foo(20)
    profile(foo) //execution profiles are cumulated




See Also
~~~~~~~~


+ `exec`_ script file execution
+ `deff`_ on-line definition of function
+ `plotprofile`_ extracts and displays execution profiles of a Scilab
  function
+ `showprofile`_ extracts and displays execution profiles of a Scilab
  function


.. _exec: exec.html
.. _showprofile: showprofile.html
.. _plotprofile: plotprofile.html
.. _deff: deff.html


