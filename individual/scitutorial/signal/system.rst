====
"system"
====

Scilab Function Last update : April 1993
**system** - observation update



Calling Sequence
~~~~~~~~~~~~~~~~

[x1,y]=system(x0,f,g,h,q,r)




Parameters
~~~~~~~~~~


+ **x0** : input state vector
+ **f** : system matrix
+ **g** : input matrix
+ **h** : Output matrix
+ **q** : input noise covariance matrix
+ **r** : output noise covariance matrix
+ **x1** : output state vector
+ **y** : output observation




Description
~~~~~~~~~~~

define system function which generates the next observation given the
old state. System recursively calculated


::

    
    
         x1=f*x0+g*u
         y=h*x0+v
       
        


where **u** is distributed **N(0,q)** and **v** is distribute
**N(0,r)** .



Author
~~~~~~

C. B.



