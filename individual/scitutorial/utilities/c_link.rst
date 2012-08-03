====
"c_link"
====

Scilab Function Last update : April 1993
**c_link** - check dynamic link



Calling Sequence
~~~~~~~~~~~~~~~~

c_link(routine-name)
[test,ilib]=c_link(routine-name)
test=c_link(routine-name,num)




Parameters
~~~~~~~~~~


+ **routine-name** : a character string
+ **num** :
+ **test** : boolean, indicates if there is a shared library which
  contains **routine-name** .
+ **ilib** : a scalar, the number of the shared library which contains
  **routine-name**




Description
~~~~~~~~~~~

**c_link** is a boolean function which checks if the routine
**routine-name** is currently linked. This function returns a boolean
value true or false. When used with two return values, the function
**c_link** returns a boolean value in **test** and the number of the
shared library which contains **routine-name** in **ilib** (when
**test** is true).



See Also
~~~~~~~~

` **link** `_,` **fort** `_,

.. _
      : ://./utilities/../programming/fort.htm
.. _
      : ://./utilities/link.htm


