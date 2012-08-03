====
"diff"
====

Scilab Function Last update : 07/04/2004
**diff** - Difference and discrete derivative



Calling Sequence
~~~~~~~~~~~~~~~~

y=diff(x)
y=diff(x [,n [,dim]])




Parameters
~~~~~~~~~~


+ **x** : vector or matrix (real, complex, sparse or polynomial)
+ **n** : integer the order of differentiation
+ **dim** : integer or character string with values "r","c" and "*"
+ **y** : scalar or vector




Description
~~~~~~~~~~~

**y=diff(x)** compute the difference function y=x(2:$)-x(1:$-1)

**diff(x,n,dim)** is the **n** th difference function along dimension
**dim** .

**diff(x,n,"*")** is equivalent to diff(x(:),n).

Default value for **n** is 1. Default value for **dim** is **"*"** .

**dim='r'** is equivalent to **dim=1** and **dim='c'** is equivalent
to **dim=2** .



Examples
~~~~~~~~


::

    
    
    v=(1:8)^3;
    diff(v)
    diff(v,3)
    
    A=[(1:8)^2
       (1:8)^3
       (1:8)^4];
    
    diff(A,3,2)
    
    //approximate differentiation
    step=0.001
    t=0:step:10;
    y=sin(t);
    dy=diff(sin(t))/step; //approximate differentiation of sine function
    norm(dy-cos(t(1:$-1)),%inf)
     
      




