====
"subf"
====

Scilab Function Last update : April 1993
**subf** - symbolic subtraction



Calling Sequence
~~~~~~~~~~~~~~~~

["c"]=subf("a","b")




Parameters
~~~~~~~~~~


+ **"a","b","c" ** : strings




Description
~~~~~~~~~~~

returns the character string **c** = **"a-b"** Trivial simplifications
such as **subf("0","a")** or **subf("1","2")** are performed.



Examples
~~~~~~~~


::

    
    
    subf('0','a')
    subf('2','1')
    subf('a','0')
     
      




See Also
~~~~~~~~

` **mulf** `_,` **ldivf** `_,` **rdivf** `_,` **eval** `_,` **evstr**
`_,

.. _
      : ://./elementary/ldivf.htm
.. _
      : ://./elementary/eval.htm
.. _
      : ://./elementary/../programming/evstr.htm
.. _
      : ://./elementary/mulf.htm
.. _
      : ://./elementary/rdivf.htm


