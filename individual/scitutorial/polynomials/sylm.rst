====
"sylm"
====

Scilab Function Last update : April 1993
**sylm** - Sylvester matrix



Calling Sequence
~~~~~~~~~~~~~~~~

[S]=sylm(a,b)




Parameters
~~~~~~~~~~


+ **a,b** : two polynomials
+ **S** : matrix




Description
~~~~~~~~~~~

**sylm(a,b)** gives the Sylvester matrix associated to polynomials
**a** and **b** , i.e. the matrix **S** such that:

**coeff( a*x + b*y )' = S * [coeff(x)';coeff(y)']** .

Dimension of **S** is equal to **degree(a)+degree(b)** .

If **a** and **b** are coprime polynomials then

**rank(sylm(a,b))=degree(a)+degree(b))** and the instructions


::

    
    
      u = sylm(a,b) \ eye(na+nb,1)
      x = poly(u(1:nb),'z','coeff')
      y = poly(u(nb+1:na+nb),'z','coeff')
       
        


compute Bezout factors **x** and **y** of minimal degree such that
**a*x+b*y = 1**



