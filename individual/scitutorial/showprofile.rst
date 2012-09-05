


showprofile
===========

extracts and displays execution profiles of a Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    showprofile(fun)




Arguments
~~~~~~~~~

:fun a Scilab function
:



Description
~~~~~~~~~~~

To use `showprofile` the Scilab function must have been prepared for
profiling (see exec).

For such function, When such a function is executed the systems counts
how many time each line is executed and how may cpu time is spend for
each line execution. These data are stored within the function data
structure. The `showprofile` function outputs profiling results (see
`profile`) with text of the function lines.

Function text is rebuild with `fun2string`.



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
    foo(30)
    
    //get execution profiles
    showprofile(foo)




See Also
~~~~~~~~


+ `profile`_ extract execution profiles of a Scilab function
+ `plotprofile`_ extracts and displays execution profiles of a Scilab
  function
+ `fun2string`_ generates ascii definition of a scilab function


.. _profile: profile.html
.. _plotprofile: plotprofile.html
.. _fun2string: fun2string.html


