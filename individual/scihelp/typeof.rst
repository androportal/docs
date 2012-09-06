


typeof
======

object type



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [t]=typeof(object)




Arguments
~~~~~~~~~

:object Scilab object
: :t string
:



Description
~~~~~~~~~~~

`t=typeof(object)` returns one of the following strings:

:"constant" if object is a real or complex matrix of double.
: :"polynomial" if object is a `polynomial matrix`_.
: :"function" if object is a `function`_ (Scilab code). See also
  `deff`_.
: :"handle" if object is an `handle`_.
: :"string" if object is a matrix made of `character strings`_.
: :"boolean" if object is a `boolean matrix`_.
: :"list" if object is a `list`_.
: :"rational" if object is a `rational matrix`_ (transfer matrix).
: :"state-space" if object is a state-space model (see `syslin`_).
: :"sparse" if object is a (real) `sparse matrix`_.
: :"boolean sparse" if object is a `boolean sparse matrix`_.
: :"hypermat" if object is an `hypermatrix`_ (N-dimension array with N
  >=3).
: :"st" if object is a `structure`_.
: :"ce" if object is a `cell`_ array.
: :"fptr" if object is a built-in Scilab function, called also gateway
  (C, C++ or Fortran code).
: :"pointer" if object is a pointer (See a use case: `lufact`_).
: :"size implicit" if object is a size implicit polynomial used for
  indexing. This a purely internal value.
: :"library" if object is function library.
: :"int8" or "uint8" or "int16" or "uint16" or "int32" or "uint32" if
  object is a matrix of [unsigned] integers stored on 8, 16 or 32 bits.
  (See `int`_)
:

Note that if the object is a `tlist`_ or `mlist`_, typeof will return
the first string in the first list entry



Examples
~~~~~~~~


::

    typeof(1)
    typeof(`poly`_(0,'x'))
    
    typeof(1/`poly`_(0,'x'))
    typeof(%t)
    
    w=`sprand`_(100,100,0.001);
    typeof(w)
    typeof(w==w)
    
    `deff`_('y=f(x)','y=2*x');
    typeof(f)
    
    L=`tlist`_(['V','a','b'],18,'Scilab');
    typeof(L)
    
    typeof(corelib)




See Also
~~~~~~~~


+ `type`_ Returns the type of a variable
+ `strings`_ Scilab Object, character strings
+ `syslin`_ linear system definition
+ `poly`_ polynomial definition


.. _mlist: mlist.html
.. _cell: cell.html
.. _handle: graphics_entities.html
.. _int: int8.html
.. _list: list.html
.. _tlist: tlist.html
.. _strings: strings.html
.. _function: function.html
.. _poly: poly.html
.. _type: type.html
.. _structure: struct.html
.. _boolean matrix: matrices.html
.. _syslin: syslin.html
.. _deff: deff.html
.. _boolean sparse matrix: sparse.html
.. _hypermatrix: hypermatrices.html
.. _rational matrix: rational.html
.. _lufact: lufact.html


