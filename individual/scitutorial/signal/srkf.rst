====
"srkf"
====

Scilab Function Last update : April 1993
**srkf** - square root Kalman filter



Calling Sequence
~~~~~~~~~~~~~~~~

[x1,p1]=srkf(y,x0,p0,f,h,q,r)




Parameters
~~~~~~~~~~


+ **f, h** : current system matrices
+ **q, r** : covariance matrices of dynamics and observation noise
+ **x0, p0** : state estimate and error variance at t=0 based on data
  up to t=-1
+ **y** : current observation Output from the function is
+ **x1, p1** : updated estimate and error covariance at t=1 based on
  data up to t=0




Description
~~~~~~~~~~~

square root Kalman filter algorithm



Author
~~~~~~

C. B.



