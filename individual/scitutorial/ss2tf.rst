


ss2tf
=====

conversion from state-space to transfer function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [h]=ss2tf(sl)
    [Ds,NUM,chi]=ss2tf(sl)
    
    [h]=ss2tf(sl,"b")
    [Ds,NUM,chi]=ss2tf(sl,"b")
    
    
    [h]=ss2tf(sl,rmax)
    [Ds,NUM,chi]=ss2tf(sl,rmax)




Arguments
~~~~~~~~~

:sl linear system ( `syslin` list)
: :h transfer matrix
:



Description
~~~~~~~~~~~

Called with three outputs `[Ds,NUM,chi]=ss2tf(sl)` returns the
numerator polynomial matrix `NUM`, the characteristic polynomial `chi`
and the polynomial part `Ds` separately i.e.:


::

    h = NUM/chi + Ds


Method:

One uses the characteristic polynomial and `det(A+Eij)=det(A)+C(i,j)`
where `C` is the adjugate matrix of `A`.

With `rmax` or `"b"` argument uses a block diagonalization of sl.A
matrix and applies "Leverrier" algorithm on blocks. If given, `rmax`
controls the conditionning (see bdiag).



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    h=[1,1/s;1/(s^2+1),s/(s^2-2)]
    sl=`tf2ss`_(h);
    h=`clean`_(ss2tf(sl))
    [Ds,NUM,chi]=ss2tf(sl)




See Also
~~~~~~~~


+ `tf2ss`_ transfer to state-space
+ `syslin`_ linear system definition
+ `nlev`_ Leverrier's algorithm
+ `glever`_ inverse of matrix pencil


.. _nlev: nlev.html
.. _tf2ss: tf2ss.html
.. _syslin: syslin.html
.. _glever: glever.html


