


subf
====

symbolic subtraction



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ["c"]=subf("a","b")




Arguments
~~~~~~~~~

:"a","b","c" strings
:



Description
~~~~~~~~~~~

returns the character string `c`= `"a-b"` Trivial simplifications such
as `subf("0","a")` or `subf("1","2")` are performed.



Examples
~~~~~~~~


::

    subf('0','a')
    subf('2','1')
    subf('a','0')




See Also
~~~~~~~~


+ `mulf`_ symbolic multiplication
+ `ldivf`_ left symbolic division
+ `rdivf`_ right symbolic division
+ `eval`_ evaluation of a matrix of strings
+ `evstr`_ evaluation of expressions


.. _eval: eval.html
.. _evstr: evstr.html
.. _rdivf: rdivf.html
.. _ldivf: ldivf.html
.. _mulf: mulf.html


