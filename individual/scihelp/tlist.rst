


tlist
=====

Scilab object and typed list definition.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tlist(typ,a1,....an )




Arguments
~~~~~~~~~

:typ Character string or vector of character strings
: :ai Any Scilab object ( `matrix, list,string...`).
:



Description
~~~~~~~~~~~

Creates a `typed-list` with elements `ai`'s. The `typ` argument
specifies the list type. Such `typed-list` allow the user to define
new operations working on these object through scilab functions. The
only difference between `typed-list` and `list` is the value of the
type (16 instead of 15).

`typ(1)` specifies the list type (character string used to define soft
coded operations)

if specified `typ(i)` may give the `i+1`th element formal name

Standard Operations on `list` work similarly for `typed-list`:

extraction : `[x,y,z...]=l(v)` where `v` is a vector of indices;
`[x,y,z]=l(:)` extracts all the elements.

insertion : `l(i)=a`

deletion : `l(i)=null()` removes the i-th element of the `tlist l`.
Note that the semantics of `l.x=null()` is undefined, but a definition
can be given through the `overloading`_ mechanism.

display

Moreover if `typ(2:n+1)` are specified, user may point elements by
their names

We give below examples where tlist are used.

Linear systems are represented by specific `typed-list` e.g. a linear
system `[A,B,C,D]` is represented by the tlist
`Sys=tlist(['lss';'A';'B';'C';'D';'X0';'dt'],A,B,C,D,x0,'c')` and this
specific list may be created by the function `syslin`.

Sys(2), Sys('A') or Sys.A is the state-matrix and Sys('dt') or Sys.dt
is the time domain

A rational matrix `H` is represented by the `typed-list`
`H=rlist(Num,Den,[])` where `Num` and `Den` are two polynomial
matrices and a (e.g. continuous time) linear system with transfer
matrix `H` maybe created by `syslin('c',H)`.

H(2), H('num') or H.num is the transfer matrix numerator



Examples
~~~~~~~~


::

    // tlist creation
    t = tlist(["listtype","field1","field2"], [], []);
    t.field1(1) = 10;
    t.field1(2) = 20;
    t.field2(1) = "Scilab";
    t.field2(2) = "tlist";
    t.field2(3) = "example";
    
    // Fields contents display
    `disp`_(t.field1)
    `disp`_(t.field2)
    
    // Generic tlist display
    `disp`_(t)
    
    // Overloading display for this type of tlist
    function %listtype_p(mytlist)
      f = `fieldnames`_(mytlist);
    
      // typeof(mytlist) <=> f(1)
      `mprintf`_("Displaying a tlist of type: %s\n", `typeof`_(mytlist));
    
      `mprintf`_("\n");
    
      `mprintf`_("-- Field ''%s'' --\n", f(1));
      `mprintf`_("Contents: %s\n", `sci2exp`_(mytlist(f(1))));
    
      `mprintf`_("\n");
    
      `mprintf`_("-- Field ''%s'' --\n", f(2));
      `mprintf`_("Contents: %s\n", `sci2exp`_(mytlist(f(2))));
    endfunction
    
    // Display using overloading function
    `disp`_(t)




See Also
~~~~~~~~


+ `percent`_ (%) special character
+ `syslin`_ linear system definition
+ `list`_ Scilab object and list function definition
+ `mlist`_ Scilab object, matrix oriented typed list definition.


.. _mlist: mlist.html
.. _list: list.html
.. _percent: percent.html
.. _syslin: syslin.html
.. _overloading: overloading.html


