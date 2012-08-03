====
"edit_error"
====

Scilab Function Last update : 13/01/2005
**edit_error** - opens in SciPad the source of the last recorded error



Calling Sequence
~~~~~~~~~~~~~~~~

answ = edit_error(clearerror)




Parameters
~~~~~~~~~~


+ **clearerror** : boolean - if true the error condition is cleared,
  if false it is kept (as in ` **lasterror** `_)
+ **answ** : a string stating which source file is open (or why no
  file was open)




Description
~~~~~~~~~~~

This function opens in SciPad the source of the function which caused
the last recorded error, and highlights the offending line.

This function works only for functions which are defined in libraries,
i.e. not for internal functions, nor with functions defined online,
nor loaded with individual ` **getf** `_ or ` **getd** `_. This is
since Scilab presently retains only the path to libraries and not to
individual function sources.

Correspondance between the function name foo and function filename
foo.sci is tacitly assumed.



Examples
~~~~~~~~


::

    
        acosh abc
        edit_error
       




See Also
~~~~~~~~

` **scipad** `_,` **lasterror** `_,` **errclear** `_,



Authors
~~~~~~~

****Enrico Segre


.. _
      : ://./utilities/scipad.htm
.. _
      : ://./utilities/../functions/getd.htm
.. _
      : ://./utilities/../functions/getf.htm
.. _
      : ://./utilities/../programming/lasterror.htm
.. _
      : ://./utilities/../programming/errclear.htm


