


getfield
========

list field extraction



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x,...]=getfield(i,l)




Arguments
~~~~~~~~~

:x matrix of any possible types
: :l list, tlist or mlist variable
: :i field index, see extraction for more details.
:



Description
~~~~~~~~~~~

This function is an equivalent of `[x,...]=l(i)` syntax for field
extraction with the only difference that it also applies to `mlist`
objects.



Examples
~~~~~~~~


::

    l=`list`_(1,'qwerw',%s)
    [a,b]=getfield([3 2],l)
    
    a=`hypermat`_([2,2,2],`rand`_(1:2^3));// hypermatrices are coded using mlists
    a(1) // the a(1,1,1) entry
    getfield(1,a) // the mlist first field




See Also
~~~~~~~~


+ `extraction`_ matrix and list entry extraction


.. _extraction: extraction.html


