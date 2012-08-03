====
"lcmdiag"
====

Scilab Function Last update : 20/12/2004
**lcmdiag** - least common multiple diagonal factorization



Calling Sequence
~~~~~~~~~~~~~~~~

[N,D]=lcmdiag(H)
[N,D]=lcmdiag(H,flag)




Parameters
~~~~~~~~~~


+ **H** : rational matrix
+ **N** : polynomial matrix
+ **D** : diagonal polynomial matrix
+ **flag** : character string: **'row'** or **'col'** (default)




Description
~~~~~~~~~~~

**[N,D]=lcmdiag(H,'row')** computes a factorization **D*H=N** , i.e.
**H=D^(-1)*N** where D is a diagonal matrix with D(k,k)=lcm of kth row
of H('den').

**[N,D]=lcmdiag(H)** or **[N,D]=lcmdiag(H,'col)** returns
**H=N*D^(-1)** with diagonal D and D(k,k)=lcm of kth col of H('den')



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    H=[1/s,(s+2)/s/(s+1)^2;1/(s^2*(s+2)),2/(s+2)];
    [N,D]=lcmdiag(H);
    N/D-H
     
      




See Also
~~~~~~~~

` **lcm** `_,` **gcd** `_,` **bezout** `_,

.. _
      : ://./polynomials/bezout.htm
.. _
      : ://./polynomials/gcd.htm
.. _
      : ://./polynomials/lcm.htm


