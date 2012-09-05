


kalm
====

Kalman update



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x1,p1,x,p]=kalm(y,x0,p0,f,g,h,q,r)




Arguments
~~~~~~~~~

:f,g,h current system matrices
: :q, r covariance matrices of dynamics and observation noise
: :x0,p0 state estimate and error variance at t=0 based on data up to
  t=-1
: :y current observation Output from the function is:
: :x1,p1 updated estimate and error covariance at t=1 based on data up
  to t=0
: :x updated estimate and error covariance at t=0 based on data up to
  t=0
:



Description
~~~~~~~~~~~

function which gives the Kalman update and error variance



