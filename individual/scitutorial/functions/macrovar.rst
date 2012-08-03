====
"macrovar"
====

Scilab Function Last update : April 1993
**macrovar** - variables of function



Calling Sequence
~~~~~~~~~~~~~~~~

vars=macrovar(function)




Parameters
~~~~~~~~~~


+ **vars** : list **list(in,out,globals,called,locals)**
+ **function** : name of a function




Description
~~~~~~~~~~~

Returns in a list the set of variables used by a function. **vars** is
a list made of five column vectors of character strings

**in** : input variables ( **vars(1)** )

**out** : output variables ( **vars(2)** )

**globals** : global variables ( **vars(3)** )

**called** : names of functions called ( **vars(4)** )

**locals** : local variables ( **vars(5)** )



Examples
~~~~~~~~


::

    
    
    deff('y=f(x1,x2)','loc=1;y=a*x1+x2-loc')
    vars=macrovar(f)
     
      




See Also
~~~~~~~~

` **string** `_,` **macr2lst** `_,

.. _
      : ://./functions/macr2lst.htm
.. _
      : ://./functions/../strings/string.htm


