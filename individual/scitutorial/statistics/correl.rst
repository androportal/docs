====
"correl"
====

Last update : July 2000
**correl** - correlation of two variables



Calling Sequence
~~~~~~~~~~~~~~~~

rho=correl(x,y,fre)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector
+ **y** : real or complex vector
+ **fre** : matrix of type length(x) x length(y)




Description
~~~~~~~~~~~

**correl(x,y,fre)** computes the correlation of two variables x and y.
fre is a matrix of dimensions length(x) x length(y). In fre the
element of indices (i,j) corresponds to the value or number or
frequences of x_i&y_j.



References
~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, J.Wiley &
Sons, 1990.



Examples
~~~~~~~~


::

    
    
    x=[2.5 7.5 12.5 17.5]
    h=[0 1 2]
    fre=[.03 .12 .07;.02 .13 .11;.01 .13 .14;.01 .09 .14]
    rho=correl(x,h,fre)
     
      




See Also
~~~~~~~~

` **covar** `_,



Author
~~~~~~

Carlos Klimann

.. _
      : ://./statistics/covar.htm


