


addf
====

symbolic addition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    addf("a","b")




Arguments
~~~~~~~~~

:"a","b" character strings
:



Description
~~~~~~~~~~~

`addf("a","b")` returns the character string `"a+b"`. Trivial
simplifications such as `addf("0","a")` or `addf("1","2")` are
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


+ `mulf`_ symbolic multiplication
+ `subf`_ symbolic subtraction
+ `ldivf`_ left symbolic division
+ `rdivf`_ right symbolic division
+ `eval`_ evaluation of a matrix of strings
+ `evstr`_ evaluation of expressions


.. _subf: subf.html
.. _eval: eval.html
.. _evstr: evstr.html
.. _rdivf: rdivf.html
.. _mulf: mulf.html
.. _ldivf: ldivf.html


