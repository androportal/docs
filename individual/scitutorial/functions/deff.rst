====
"deff"
====

Scilab Function Last update : April 1993
**deff** - on-line definition of function



Calling Sequence
~~~~~~~~~~~~~~~~

deff('[s1,s2,...]=newfunction(e1,e2,....)',text [,opt])




Parameters
~~~~~~~~~~


+ **e1,e2,..., ** : input variables.
+ **s1,s2,..., ** : output variables.
+ **text** : matrix of character strings
+ **opt** : optional character string

    + **'c' ** : function is "compiled" to be more efficient (default)
    + **'n' ** : function is not "compiled"





Description
~~~~~~~~~~~

On-line definition of function (user defined function): the name of
the created function is **newfunction** . **text** is a sequence of
instructions usually set as a vector of character strings.

This command can be used inside a function and the new function can be
an input or output of any other function.

Usually, functions are defined in a file and loaded into Scilab by
**getf**

Some time, in particular when you want to use define strings within
**deff** **text** is rather difficult to write. A more tractable way
may be to define your function in a file as usual, to load it into
Scilab by **getf** (without **'c'** option) and use sci2exp to get
corresponding **deff** instructions.



Examples
~~~~~~~~


::

    
    
    deff('[x]=myplus(y,z)','x=y+z')
    //
    deff('[x]=mymacro(y,z)',['a=3*y+1'; 'x=a*z+y'])
     
      




See Also
~~~~~~~~

` **getf** `_,` **comp** `_,` **exec** `_,` **function** `_,

.. _
      : ://./functions/getf.htm
.. _
      : ://./functions/comp.htm
.. _
      : ://./functions/../programming/exec.htm
.. _
      : ://./functions/function.htm


