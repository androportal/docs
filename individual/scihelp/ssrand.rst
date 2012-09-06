


ssrand
======

random system generator



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sl=ssrand(nout,nin,nstate)
    [sl,U]=ssrand(nout,nin,nstate,flag)




Arguments
~~~~~~~~~

:nout integer (number of output)
: :nin integer (number of input)
: :nstate integer (dimension of state-space)
: :flag list made of one character string and one or several integers
: :sl list ( `syslin` list)
: :U square `(nstate x nstate)` nonsingular matrix
:



Description
~~~~~~~~~~~

`sl=ssrand(nout,nin,nstate)` returns a random strictly proper ( `D=0`)
state-space system of size `[nout,nint]` represented by a `syslin`
list and with `nstate` state variables.

`[sl,U]=ssrand(nout,nin,nstate,flag)` returns a test linear system
with given properties specified by `flag`. `flag` can be one of the
following:


::

    flag=`list`_('co',dim_cont_subs)  
    flag=`list`_('uo',dim_unobs_subs)
    flag=`list`_('ncno',dim_cno,dim_ncno,dim_co,dim_nco)
    flag=`list`_('st',dim_cont_subs,dim_stab_subs,dim_stab0)  
    flag=`list`_('dt',dim_inst_unob,dim_instb0,dim_unobs)
    flag=`list`_('on',nr,ng,ng0,nv,rk)
    flag=`list`_('ui',nw,nwu,nwui,nwuis,rk)


The complete description of the `Sys` is given in the code of the
`ssrand` function (in `SCI/modules/cacsd/macros/`). For example with
`flag=list('co',dim_cont_subs)` a non-controllable system is return
and `dim_cont_subs` is the dimension of the controllable subspace of
`Sys`. The character strings `'co','uo','ncno','st','dt','on','ui'`
stand for "controllable", "unobservable", "non-controllable-non-
observable", "stabilizable","detectable","output-nulling","unknown-
input".



Examples
~~~~~~~~


::

    //flag=list('st',dim_cont_subs,dim_stab_subs,dim_stab0)  
    //dim_cont_subs<=dim_stab_subs<=dim_stab0  
    //pair (A,B) U-similar to:
    //    [*,*,*,*;     [*;    
    //    [0,s,*,*;     [0;
    //A=  [0,0,i,*;   B=[0;
    //    [0,0,0,u]     [0]
    //     
    // (A11,B1) controllable  s=stable matrix i=neutral matrix u=unstable matrix
    [Sl,U]=ssrand(2,3,8,`list`_('st',2,5,5));
    w=`ss2ss`_(Sl,`inv`_(U)); //undo the random change of basis => form as above
    [n,nc,u,sl]=`st_ility`_(Sl);n,nc




See Also
~~~~~~~~


+ `syslin`_ linear system definition


.. _syslin: syslin.html


