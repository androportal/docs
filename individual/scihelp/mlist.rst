


mlist
=====

Scilab object, matrix oriented typed list definition.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mlist(typ,a1,....an )




Arguments
~~~~~~~~~

:typ vector of character strings
: :ai any Scilab object ( `matrix, list,string...`).
:



Description
~~~~~~~~~~~

`mlist` object are very similar to `tlist`_ objects. The only
difference concerns the `extraction`_ and `insertion`_ syntax: if `M`
is an mlist, for any index `i` which is not a field name, `M(i)` is no
more the `i`th field of the list.

The semantic of the extraction and insertion syntax should be given by
an `overloading`_ functions.

The overloading function for extraction syntax `b=a(i1,...,in)` has
the following calling sequence: `b=%<type_of_a>_e_(i1,...,in,a)`

and the syntax `[x1,..,xm]=a(i1,...,in)` has the following calling
sequence: `[x1,..,xm]=%<type_of_a>_e_(i1,...,in,a)`



The overloading function associated to the insertion syntax
`a(i1,...,in)=b` has the following calling sequence:
`a=%<type_of_b>_i_<type_of_a>(i1,...,in,b,a)`.



mlist fields must then be designed by their names. They can also be
handled using the `getfield` and `setfield` functions.



Examples
~~~~~~~~


::

    M=mlist(['V','name','value'],['a','b';'c' 'd'],[1 2; 3 4]);
    //define display
    function %V_p(M),`disp`_(M.name+':'+`string`_(M.value)),endfunction
    
    //define extraction operation
    function r=%V_e(varargin)
      M=varargin($)
      r=mlist(['V','name','value'],M.name(varargin(1:$-1)),M.value(varargin(1:$-1)))
    endfunction
    M(2,:) // the second row of  M
    M.value
    
    //define insertion operations
    function M=%V_i_V(varargin)
      M=varargin($)
      N=varargin($-1)
      M.value(varargin(1:$-2))=N.value
      M.name(varargin(1:$-2))=N.name
    endfunction
    M(1,1)=M(2,2)
    
    function M=%s_i_V(varargin) //insertion of a regular matrix into a V matrix
      M=varargin($)
      N=varargin($-1)
      M.value(varargin(1:$-2))=N
      M.name(varargin(1:$-2))=`emptystr`_(N)
    endfunction
    M(1,1)=44
    
    //tlist case
    M=`tlist`_(['V','name','value'],['a','b';'c' 'd'],[1 2; 3 4]);
    M(2)
    M(2)='a'+`string`_([1 2;3 4])
    
    M('name')




See Also
~~~~~~~~


+ `tlist`_ Scilab object and typed list definition.
+ `list`_ Scilab object and list function definition
+ `overloading`_ display, functions and operators overloading
  capabilities
+ `getfield`_ list field extraction
+ `setfield`_ list field insertion


.. _setfield: setfield.html
.. _list: list.html
.. _insertion: insertion.html
.. _extraction: extraction.html
.. _getfield: getfield.html
.. _tlist: tlist.html
.. _overloading: overloading.html


