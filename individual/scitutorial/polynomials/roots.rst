====
"roots"
====

Scilab Function Last update : 02/11/2005
**roots** - roots of polynomials



Calling Sequence
~~~~~~~~~~~~~~~~

[x]=roots(p)
[x]=roots(p,'e')




Parameters
~~~~~~~~~~


+ **p** : polynomial with real or complex coefficients or vector of
  the polynomial coefficients in decreasing degree order (Matlab
  compatibility).




Description
~~~~~~~~~~~

**x=roots(p)** returns in the complex vector **x** the roots of the
polynomial **p** . For real polynomials of degree <=100 the fast RPOLY
algorithm is used. In the other cases the roots are computed as the
eigenvalues of the associated companion matrix. Use **x=roots(p,'e')**
to force this algorithm in any cases.



Examples
~~~~~~~~


::

    
    
    p=poly([0,10,1+%i,1-%i],'x');
    roots(p)
    A=rand(3,3);roots(poly(A,'x'))    // Evals by characteristic polynomial
    spec(A) 
     
      




See Also
~~~~~~~~

` **poly** `_,` **spec** `_,` **companion** `_,



Authors
~~~~~~~

****Serge Steer (INRIA)




Bibliography
~~~~~~~~~~~~
The RPOLY algorithm is described in ACM TOMS 1 (1975) 178-189


Used Function
~~~~~~~~~~~~~
The rpoly.f source codes can be found in the directory
routines/control of a Scilab source distribution. The eigenvalue
computation is perfomed using DGEEV and ZGEEV LAPACK codes.
.. _
      : ://./polynomials/../linear/spec.htm
.. _
      : ://./polynomials/../programming/poly.htm
.. _
      : ://./polynomials/../linear/companion.htm


