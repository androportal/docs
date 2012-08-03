====
"addf"
====

Scilab Function Last update : 09/02/2004
**addf** - symbolic addition



Calling Sequence
~~~~~~~~~~~~~~~~

addf("a","b")




Parameters
~~~~~~~~~~


+ **"a","b" ** : character strings




Description
~~~~~~~~~~~

**addf("a","b")** returns the character string **"a+b"** . Trivial
simplifications such as **addf("0","a")** or **addf("1","2")** are
performed.



Examples
~~~~~~~~


::

    
    
    addf('0','1')
    addf('1','a')
    addf('1','2')
    'a'+'b'
     
      




See Also
~~~~~~~~

` **mulf** `_,` **subf** `_,` **ldivf** `_,` **rdivf** `_,` **eval**
`_,` **evstr** `_,

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
.. _
      : ://./elementary/subf.htm


