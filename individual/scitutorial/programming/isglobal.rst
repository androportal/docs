====
"isglobal"
====

Scilab Function Last update : April 1999
**isglobal** - check if a variable is global



Calling Sequence
~~~~~~~~~~~~~~~~

t=isglobal(x)




Parameters
~~~~~~~~~~


+ **x** : any variable
+ **t** : a boolean




Description
~~~~~~~~~~~

**isglobal(x)** returns true if x has been declared to be a global
variable and false otherwise.



Examples
~~~~~~~~


::

    
    
    isglobal(1)
    global a
    isglobal(a)
     
      




See Also
~~~~~~~~

` **global** `_,` **clearglobal** `_,` **who** `_,

.. _
      : ://./programming/clearglobal.htm
.. _
      : ://./programming/global.htm
.. _
      : ://./programming/who.htm


