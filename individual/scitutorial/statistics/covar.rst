====
"covar"
====

Last update : July 2000
**covar** - covariance of two variables



Calling Sequence
~~~~~~~~~~~~~~~~

s=covar(x,y,fre)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector
+ **y** : real or complex vector
+ **fre** : matrix of type length(x) x length(y)




Description
~~~~~~~~~~~

**covar(x,y,fre)** computes the covariance of two variables x and y.
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

    
    
    x=[10 20 30 40]
    y=[10 20 30 40]
    fre=[.20 .04 .01  0;
         .10 .36 .09  0;
           0 .05 .10  0;
           0   0   0 .05]
    s=covar(x,y,fre)
     
      




Author
~~~~~~

Carlos Klimann



