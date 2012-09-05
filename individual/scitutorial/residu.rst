


residu
======

residue



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [V]=residu(P,Q1,Q2)




Arguments
~~~~~~~~~

:P, Q1, Q2 polynomials or matrix polynomials with real or complex
  coefficients.
:



Description
~~~~~~~~~~~

`V=residu(P,Q1,Q2)` returns the matrix `V` such that `V(i,j)` is the
sum of the residues of the rational fraction
`P(i,j)/(Q1(i,j)*Q2(i,j))` calculated at the zeros of `Q1(i,j)`.

`Q1(i,j)` and `Q2(i,j)` must not have any common root.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    H=[s/(s+1)^2,1/(s+2)];N=`numer`_(H);D=`denom`_(H);
    w=residu(N.*`horner`_(N,-s),D,`horner`_(D,-s));  //N(s) N(-s) / D(s) D(-s)
    `sqrt`_(`sum`_(w))  //This is H2 norm
    `h2norm`_(`tf2ss`_(H))
    
    p=(s-1)*(s+1)*(s+2)*(s+10);a=(s-5)*(s-1)*(s*s)*((s+1/2)**2);
    b=(s-3)*(s+2/5)*(s+3);
    residu(p,a,b)+531863/4410    //Exact
    z=`poly`_(0,'z');a=z^3+0.7*z^2+0.5*z-0.3;b=z^3+0.3*z^2+0.2*z+0.1;
    atild=`gtild`_(a,'d');btild=`gtild`_(b,'d');
    residu(b*btild,z*a,atild)-2.9488038   //Exact
    a=a+0*%i;b=b+0*%i;
    `real`_(residu(b*btild,z*a,atild)-2.9488038) //Complex case




See Also
~~~~~~~~


+ `pfss`_ partial fraction decomposition
+ `bdiag`_ block diagonalization, generalized eigenvectors
+ `roots`_ roots of polynomials
+ `poly`_ polynomial definition
+ `gtild`_ tilde operation


.. _gtild: gtild.html
.. _poly: poly.html
.. _pfss: pfss.html
.. _roots: roots.html
.. _bdiag: bdiag.html


