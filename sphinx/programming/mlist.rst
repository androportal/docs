Scilab Function

Last update : 05/01/2005

**mlist** - Scilab object, matrix oriented typed list definition.

Calling Sequence
~~~~~~~~~~~~~~~~

``mlist(typ,a1,....an )``

Parameters
~~~~~~~~~~

-  ``           typ         ``: vector of character strings
-  ``           ai         ``: any Scilab object
   (``           matrix, list,string...         ``).

Description
~~~~~~~~~~~

mlist object are very similar to tlist objects. But if
``         M       `` is an mlist, for any index ``         i       ``
which is not a field name, ``         M(i)       `` is not the
``         i       ``th field of the list but is interpreted as the
``         i       `` th entry of ``         M       `` seen as a
vector. This is the only difference between ``         mlist       ``
and ``         tlist       ``.

mlist fields must then be designed by their names. They can also be
handled using the ``         getfield       `` and
``         setfield       `` functions.

Examples
~~~~~~~~

::


    M=mlist(['V','name','value'],['a','b','c'],[1 2 3]);
    //define display
    deff('%V_p(M)','disp(M.name+'':''+string(M.value))')
    //define extraction operation
    deff('r=%V_e(i,M)',..
    'r=mlist([''V'',''name'',''value''],M.name(i),M.value(i))')
    M(2) // the second entry of the vector M
    M.value 

    //define M as a tlist
    M=tlist(['V','name','value'],['a','b','c'],[1 2 3]);
    M(2)

    M('name')

    //with two  indices
    M=mlist(['V','name','value'],['a','b';'c' 'd'],[1 2;3 4]);
    deff('r=%V_e(varargin)',[
        'M=varargin($)';
        'H=[''V'',''name'',''value'']'
        'r=mlist(H,M.name(varargin(1:$-1)),M.value(varargin(1:$-1)))'])

    M(:,2)
    // multidimensionnal array
    str=['a','b','c','d','e','f','g','h'];
    n=hypermat([2,2,2],str);
    v=hypermat([2,2,2],1:8);
    M=mlist(['V','name','value'],n,v);
    M(1,1:2,2)
     
      

See Also
~~~~~~~~

```           tlist         `` <tlist.htm>`_,
```           list         `` <list.htm>`_,
```           overloading         `` <overloading.htm>`_,
```           getfield         `` <getfield.htm>`_,
```           setfield         `` <setfield.htm>`_,
