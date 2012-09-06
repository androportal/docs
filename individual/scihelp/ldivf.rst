


ldivf
=====

left symbolic division



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ldivf('d','c')




Description
~~~~~~~~~~~

returns the string `'c\d'` Trivial simplifications such as `'1\c' =
'c'` are performed.



Examples
~~~~~~~~


::

    ldivf('1','1')
    ldivf('a','0')
    ldivf('a','x')
    ldivf('2','4')




See Also
~~~~~~~~


+ `rdivf`_ right symbolic division
+ `addf`_ symbolic addition
+ `mulf`_ symbolic multiplication
+ `evstr`_ evaluation of expressions


.. _evstr: evstr.html
.. _rdivf: rdivf.html
.. _addf: addf.html
.. _mulf: mulf.html


