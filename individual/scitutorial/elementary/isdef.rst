====
"isdef"
====

Scilab Function Last update : April 1993
**isdef** - check variable existence



Calling Sequence
~~~~~~~~~~~~~~~~

isdef(name [,where])




Parameters
~~~~~~~~~~


+ **name** : a character string
+ **where** : an optional character string with default value 'all'




Description
~~~~~~~~~~~

**isdef(name)** returns **%T** if the variable **'var-name'** exists
and **%F** otherwise.

**isdef(name,'local')** returns **%T** if the variable **'var-name'**
exists in the local environment of the current function and **%F**
otherwise.



Examples
~~~~~~~~


::

    
    
    A=1;
    isdef('A')
    clear A
    isdef('A')
     
      




See Also
~~~~~~~~

` **exists** `_,` **whereis** `_,` **type** `_,` **typeof** `_,`
**clear** `_,

.. _
      : ://./elementary/../programming/whereis.htm
.. _
      : ://./elementary/../programming/clear.htm
.. _
      : ://./elementary/../programming/type.htm
.. _
      : ://./elementary/../programming/exists.htm
.. _
      : ://./elementary/typeof.htm


