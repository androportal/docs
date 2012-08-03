====
"error"
====

Scilab Function Last update : 01/06/2005
**error** - error messages



Calling Sequence
~~~~~~~~~~~~~~~~

error(message [,n])
error(n)
error(n,pos)




Parameters
~~~~~~~~~~


+ **message** : a character string. The error message to be displayed.
+ **n** : an integer. The number associated with the error message
+ **pos** : an integer. a parameter for the error message




Description
~~~~~~~~~~~

**error** function allow to issue an error message and to handle the
error. By defaut **error** stops the current execution and resume to
the prompt level. This default can be changed using the **errcatch**
or **execstr(...,'errcatch')** functions.

**error(message)** prints the character string contained in
**message** . The number associated with the error message is 10000

**error(message,n)** prints the character string contained in
**message** . The number associated with the error message is given by
**n** . This number should be greater than 10000.

**error(n)** prints the predefined error message associated with the
error number **n** .

Some predefined error messages require a parameter (see `
**error_table** `_). In this case the **pos** argument must be used
**error(n,pos)** to give the parameter value. In the other cases the
**pos** argument is ignored.

see ` **error_table** `_ for a list of error messages and the
associated error numbers.



Examples
~~~~~~~~


::

    
    
    error('my error message')
    error(43)
    error(52,3)
    
     
      




See Also
~~~~~~~~

` **warning** `_,` **errcatch** `_,` **execstr** `_,` **lasterror**
`_,

.. _
      : ://./programming/../fileio/warning.htm
.. _
      : ://./programming/error_table.htm
.. _
      : ://./programming/errcatch.htm
.. _
      : ://./programming/execstr.htm
.. _
      : ://./programming/lasterror.htm


