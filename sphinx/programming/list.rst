Scilab Function

Last update : 30/11/2005

**list** - Scilab object and list function definition

Calling Sequence
~~~~~~~~~~~~~~~~

``list(a1,....an)    ``

Description
~~~~~~~~~~~

Creates a ``         list       `` with elements
``         ai       ``'s which are arbitrary Scilab objects
(``         matrix, list,...       ``). Type of ``         list       ``
objects is 15. ``list()`` creates the empty ``         list       `` (0
element).

Operations on lists
~~~~~~~~~~~~~~~~~~~

**extraction**: ``[x,y,z...]=L(v)`` where ``v`` is a vector of indices;
``[x,y,z]=L(:)`` extracts all the elements.

**insertion at index i**: ``L(i)=a`` (note that it is not an error to
use ``L(i)=a`` with *i > 1 + size(L)* but some list entries are then
undefined and their extraction gives raise to an error).

**append an element in queue**: ``L($+1)=e``.

**append an element in head**: ``L(0)=e``. (note that after this
operation ``e`` is at index 1, the initial elements being shifted on the
right).

**deletion**: ``L(i)=null()`` removes the i-th element of the list
``L``.

**concatenation of two lists**: ``L3 = lstcat(L1,L2)``.

**number of elements of a list**: you can use either
``nb_elm = size(L)`` or ``nb_elm = length(L)``.

**iterations with a list**: it is possible to use a list ``L`` with a
```               for             `` <for.htm>`_ loop:
``for e=L,...,end`` is a loop with ``length(L)`` iterations, the loop
variable ``e`` being equal to ``L(i)`` at the i th iteration.

Remarks
~~~~~~~

Scilab provides also other kinds of list, the
```             tlist           `` <tlist.htm>`_ type (typed list) and
the ```             mlist           `` <mlist.htm>`_ type which are
useful to define a new data type with operator
```             overloading           `` <overloading.htm>`_ facilities
(```             hypermatrices           `` <hypermatrices.htm>`_ which
are multi-dimensionnal arrays in scilab are in fact *mlist*).

Matlab *struct* are also available.

Examples
~~~~~~~~

::

    l = list(1,["a" "b"])
    l(0) = "foo"
    l($+1) = "hello"
    l(2) = "toto"
    l(3) = rand(1,2)
    l(3) = null()
    lbis = list("gewurtz", "caipirina" ,"debug")
    lter = lstcat(l,lbis)
    size(lter) - size(lbis) - size(l)  // must be zero

See Also
~~~~~~~~

```           null         `` <null.htm>`_,
```           lstcat         `` <lstcat.htm>`_,
```           tlist         `` <tlist.htm>`_,
```           insertion         `` <insertion.htm>`_,
```           extraction         `` <extraction.htm>`_,
```           size         `` <../elementary/size.htm>`_,
```           length         `` <../strings/length.htm>`_,
