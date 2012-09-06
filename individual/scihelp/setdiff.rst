


setdiff
=======

returns components of a vector which do not belong to another one



Calling Sequence
~~~~~~~~~~~~~~~~


::

    v=setdiff(a,b)
    [v,ka]=setdiff(a,b)




Arguments
~~~~~~~~~

:a vector of real numbers or strings
: :b vector of real numbers or strings
: :v vector of real numbers or strings with same orientation than `a`
: :ka row vector of integers, ka(i) is the location of v(i) in a
:



Description
~~~~~~~~~~~

`setdiff(a,b)` returns a sorted vector which retains the `a` entries
which are not in `b`

`[v,ka]=setdiff(a,b)` returns a sorted vector which retains the `a`
entries which are not in `b` and the location of these entries in a.



Examples
~~~~~~~~


::

    a = [223;111;2;4;2;2];
    b = [2;3;21;223;123;22];
    setdiff(a,b)
    [v,k]=setdiff(`string`_(a),`string`_(b))




See Also
~~~~~~~~


+ `unique`_ extract unique components of a vector or matrices
+ `gsort`_ sorting by quick sort agorithm
+ `union`_ extract union components of a vector


.. _gsort: gsort.html
.. _union: union.html
.. _unique: unique.html


