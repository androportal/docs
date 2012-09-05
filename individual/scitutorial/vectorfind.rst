


vectorfind
==========

finds in a matrix rows or columns matching a vector



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ind = vectorfind(m,v[,job])




Arguments
~~~~~~~~~

:m a matrix of any type (the same type as v).
: :v a vector of any type (the same type as m).
: :job A character string: optional flag with possible values "r" to
  look for matching rows or "c" to look for matching columns. Default
  value is "r".
: :ind row vector containing indices of matching rows or columns
:



Description
~~~~~~~~~~~

Finds in a matrix rows or columns matching a vector.



Examples
~~~~~~~~


::

    alr=[1,2,2;
         1,2,1;
         1,1,2;
         1,1,1;
         1,2,1];
    
    ind = vectorfind(alr,[1,2,1],'r')
    ind = vectorfind(`string`_(alr),`string`_([1,2,1]),'r')




See Also
~~~~~~~~


+ `find`_ find indices of boolean vector or matrix true elements
+ `gsort`_ sorting by quick sort agorithm


.. _gsort: gsort.html
.. _find: find.html


