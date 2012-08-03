====
"format"
====

Scilab Function Last update : April 1993
**format** - number printing and display format



Calling Sequence
~~~~~~~~~~~~~~~~

format([type],[long])
format()




Parameters
~~~~~~~~~~


+ **type** : character string
+ **long** : integer ( max number of digits (default 10))




Description
~~~~~~~~~~~

Sets the current printing format with the parameter **type** ; it is
one of the following :

**"v"**: for a variable format (default)
**"e"**: for the e-format.


**long** defines the max number of digits (default 10). **format()**
returns a vector for the current format: first component is the type
of format (0 if **v** ; 1 if **e** ); second component is the number
of digits.

In "variable format" mode, vectors entries which are less than %eps
times the maximum absolute value of the entries were displayed as "0"
in the previous Scilab versions. It is no more the case, the clean
function can be used to set neglitible entries to zeros.



Examples
~~~~~~~~


::

    
    
    x=rand(1,5);
    format('v',10);x
    format(20);x
    format('e',10);x
    format(20);x
    
    x=[100 %eps];
    format('e',10);x
    format('v',10);x
    
    format("v")
     
      




See Also
~~~~~~~~

` **write** `_,` **disp** `_,` **print** `_,

.. _
      : ://./programming/../fileio/disp.htm
.. _
      : ://./programming/../fileio/print.htm
.. _
      : ://./programming/../fileio/write.htm


