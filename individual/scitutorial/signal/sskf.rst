====
"sskf"
====

Scilab Function Last update : April 1993
**sskf** - steady-state Kalman filter



Calling Sequence
~~~~~~~~~~~~~~~~

[xe,pe]=sskf(y,f,h,q,r,x0)




Parameters
~~~~~~~~~~


+ **y** : data in form **[y0,y1,...,yn]** , **yk** a column vector
+ **f** : system matrix dim(NxN)
+ **h** : observations matrix dim(MxN)
+ **q** : dynamics noise matrix dim(NxN)
+ **r** : observations noise matrix dim(MxM)
+ **x0** : initial state estimate
+ **xe** : estimated state
+ **pe** : steady-state error covariance




Description
~~~~~~~~~~~

steady-state Kalman filter



Author
~~~~~~

C. B.



