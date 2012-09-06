


gschur
======

generalized Schur form (obsolete).



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [As,Es]=gschur(A,E)
    [As,Es,Q,Z]=gschur(A,E)
    [As,Es,Z,dim] = gschur(A,E,flag)
    [As,Es,Z,dim]= gschur(A,E,extern)




Description
~~~~~~~~~~~

This function is obsolete and is now included in the `schur` function.
In most cases the `gschur` function will still work as before, but it
will be removed in the future release.

The first three syntaxes can be replaced by


::

    [As,Es]=`schur`_(A,E)
    [As,Es,Q,Z]=`schur`_(A,E);Q=Q' //NOTE THE TRANPOSITION HERE
    [As,Es,Z,dim] = `schur`_(A,E,flag)


The last syntax requires little more adaptations:

:if extern is a scilab function the new calling sequence should be
`[As,Es,Z,dim]= schur(A,E,Nextern)` with Nextern defined as follow:

::

    function t=Nextern(R)
    if R(2)==0 then
      t=extern([1,R(1),R(3)])==1
    else
      c=(R(1)+%i*R(2))/R(3)
      t=extern([2,`real`_(c+c'),`real`_(c*c')])==1
    end
    endfunction


: :if extern is the name of an external function coded in Fortran or C
  the new calling sequence should be `[As,Es,Z,dim]=
  schur(A,E,'nextern')` with nextern defined as follow:
:


::

    logical function nextern(ar, ai, beta)
    `double`_ precision ar,ai,`beta`_
    integer r,extern
    if (ai.eq.0.0d0) then
      r=extern(1,ar,`beta`_,0.0d0,0.0d0)
    else
      r=extern(2,0.0d0,0.0d0,2.0d0*ar,ar*ar+ai*ai)
    endif
    nextern=r.eq.1
    end




See Also
~~~~~~~~


+ `external`_ Scilab Object, external function or routine
+ `schur`_ [ordered] Schur decomposition of matrix and pencils


.. _schur: schur.html
.. _external: external.html


