====
"plotprofile"
====

Scilab Function Last update : 21/11/2005
**plotprofile** - extracts and displays execution profiles of a Scilab
function



Calling Sequence
~~~~~~~~~~~~~~~~

plotprofile(fun)




Parameters
~~~~~~~~~~


+ **fun** : a Scilab compiled function, or a function name (string),
  or an array of function names




Description
~~~~~~~~~~~

To use **plotprofile** , the Scilab function must have been prepared
for profiling (see getf).

When such a function is executed, the system counts how many times
each line is executed and how much cpu time is spent executing each
line. This data is stored within the function data structure. The
function **plotprofile** in an interactive command which displays this
results in a graphic window. When a line is clicked, the source of the
function is displayed with the selected line highlighted.

NOTE: you have to click on the "Exit" item in the graphics windows to
exit from "plotprofile".

The function code is regenerated with **fun2string** and dumped into a
temporary file.



Examples
~~~~~~~~


::

    
    
    //define a function and prepare it for profiling
    deff('x=foo(n)',['if n==0 then'
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
    plotprofile(foo) // click on Exit to exit
     
      




See Also
~~~~~~~~

` **profile** `_,` **showprofile** `_,` **fun2string** `_,

.. _
      : ://./functions/../translation/fun2string.htm
.. _
      : ://./functions/showprofile.htm
.. _
      : ://./functions/profile.htm


