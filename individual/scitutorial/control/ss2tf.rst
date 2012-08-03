====
"ss2tf"
====

Scilab Function Last update : April 1993
**ss2tf** - conversion from state-space to transfer function



Calling Sequence
~~~~~~~~~~~~~~~~

[h]=ss2tf(sl)
[Ds,NUM,chi]=ss2tf(sl)

[h]=ss2tf(sl,"b")
[Ds,NUM,chi]=ss2tf(sl,"b")


[h]=ss2tf(sl,rmax)
[Ds,NUM,chi]=ss2tf(sl,rmax)






Parameters
~~~~~~~~~~


+ **sl** : linear system ( **syslin** list)
+ **h** : transfer matrix




Description
~~~~~~~~~~~

Called with three outputs **[Ds,NUM,chi]=ss2tf(sl)** returns the
numerator polynomial matrix **NUM** , the characteristic polynomial
**chi** and the polynomial part **Ds** separately i.e.:


::

    
    
    h=NUM/chi + Ds
       
        


Method:

One uses the characteristic polynomial and
**det(A+Eij)=det(A)+C(i,j)** where **C** is the adjugate matrix of
**A** .

With **rmax** or **"b"** argument uses a block diagonalization of sl.A
matrix and applies "Leverrier" algorithm on blocks. If given, **rmax**
controls the conditionning (see bdiag).



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    h=[1,1/s;1/(s^2+1),s/(s^2-2)]
    sl=tf2ss(h);
    h=clean(ss2tf(sl))
    [Ds,NUM,chi]=ss2tf(sl)
     
      




See Also
~~~~~~~~

` **tf2ss** `_,` **syslin** `_,` **nlev** `_,` **glever** `_,

.. _
      : ://./control/../elementary/syslin.htm
.. _
      : ://./control/tf2ss.htm
.. _
      : ://./control/../linear/glever.htm
.. _
      : ://./control/../linear/nlev.htm


