====
"lattn"
====

Scilab Function Last update : April 1993
**lattn** - recursive solution of normal equations



Calling Sequence
~~~~~~~~~~~~~~~~

[la,lb]=lattn(n,p,cov)




Parameters
~~~~~~~~~~


+ **n** : maximum order of the filter
+ **p** : fixed dimension of the MA part. If **p= -1** , the algorithm
  reduces to the classical Levinson recursions.
+ **cov** : matrix containing the **Rk** 's ( **d*d** matrices for a
  d-dimensional process).It must be given the following way
+ **la** : list-type variable, giving the successively calculated
  polynomials (degree 1 to degree n),with coefficients Ak




Description
~~~~~~~~~~~

solves recursively on **n** ( **p** being fixed) the following system
(normal equations), i.e. identifies the AR part (poles) of a vector
ARMA(n,p) process

where { **Rk;k=1,nlag** } is the sequence of empirical covariances



Author
~~~~~~

G. Le V.



