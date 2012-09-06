


ss2ss
=====

state-space to state-space conversion, feedback, injection



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Sl1,right,left]=ss2ss(Sl,T, [F, [G , [flag]]])




Arguments
~~~~~~~~~

:Sl linear system ( `syslin` list) in state-space form
: :T square (non-singular) matrix
: :Sl1, right, left linear systems (syslin lists) in state-space form
: :F real matrix (state feedback gain)
: :G real matrix (output injection gain)
:



Description
~~~~~~~~~~~

Returns the linear system `Sl1=[A1,B1,C1,D1]` where `A1=inv(T)*A*T,
B1=inv(T)*B, C1=C*T, D1=D`.

Optional parameters `F` and `G` are state feedback and output
injection respectively.

For example, `Sl1=ss2ss(Sl,T,F)` returns `Sl1` with:

and `right` is a non singular linear system such that `Sl1=Sl*right`.

`Sl1*inv(right)` is a factorization of `Sl`.

`Sl1=ss2ss(Sl,T,0*F,G)` returns `Sl1` with:

and `left` is a non singular linear system such that `Sl1=left*Sl` (
`right=Id` if `F=0`).

When both `F` and `G` are given, `Sl1=left*Sl*right`.


+ When `flag` is used and `flag=1` an output injection as follows is
  used and then a feedback is performed, `F` must be of size `(m+p,n)`
  `right` and `left` have the following property:

::

    Sl1 = left*`sysdiag`_(sys,`eye`_(p,p))*right


+ When `flag` is used and `flag=2` a feedback ( `F` must be of size
  `(m,n)`) is performed and then the above output injection is applied.
  `right` and `left` have the following property:

::

    Sl1 = left*`sysdiag`_(sys*right,`eye`_(p,p)))






Examples
~~~~~~~~


::

    Sl=`ssrand`_(2,2,5); `trzeros`_(Sl)       // zeros are invariant:
    Sl1=ss2ss(Sl,`rand`_(5,5),`rand`_(2,5),`rand`_(5,2)); 
    `trzeros`_(Sl1), `trzeros`_(`rand`_(2,2)*Sl1*`rand`_(2,2))
    // output injection [ A + GC, (B+GD,-G)]
    //                  [   C   , (D   , 0)]
    p=1,m=2,n=2; sys=`ssrand`_(p,m,n);
    
    // feedback (m,n)  first and then output injection.
    
    F1=`rand`_(m,n);
    G=`rand`_(n,p);
    [sys1,right,left]=ss2ss(sys,`rand`_(n,n),F1,G,2);
    
    // Sl1 equiv left*sysdiag(sys*right,eye(p,p)))
    
    res=`clean`_(`ss2tf`_(sys1) - `ss2tf`_(left*`sysdiag`_(sys*right,`eye`_(p,p))))
    
    // output injection then feedback (m+p,n) 
    F2=`rand`_(p,n); F=[F1;F2];
    [sys2,right,left]=ss2ss(sys,`rand`_(n,n),F,G,1);
    
    // Sl1 equiv left*sysdiag(sys,eye(p,p))*right 
    
    res=`clean`_(`ss2tf`_(sys2)-`ss2tf`_(left*`sysdiag`_(sys,`eye`_(p,p))*right))
    
    // when F2= 0; sys1 and sys2 are the same 
    F2=0*`rand`_(p,n);F=[F1;F2];
    [sys2,right,left]=ss2ss(sys,`rand`_(n,n),F,G,1);
    
    res=`clean`_(`ss2tf`_(sys2)-`ss2tf`_(sys1))




See Also
~~~~~~~~


+ `projsl`_ linear system projection
+ `feedback`_ feedback operation


.. _projsl: projsl.html
.. _feedback: feedback.html


