====
"armax1"
====

Scilab Function Last update : 16/12/2004
**armax1** - armax identification



Calling Sequence
~~~~~~~~~~~~~~~~

[arc,resid]=armax1(r,s,q,y,u [,b0f])




Parameters
~~~~~~~~~~


+ **y** : output signal
+ **u** : input signal
+ **r,s,q** : auto regression orders with r >=0, s >=-1.
+ **b0f** : optional parameter. Its default value is 0 and it means
  that the coefficient b0 must be identified. if bof=1 the b0 is
  supposed to be zero and is not identified
+ **arc** : is tlist with type "ar" and fields a, b, d, ny, nu, sig

    + **a** : is the vector **[1,a1,...,a_r]**
    + **b** : is the vector **[b0,......,b_s]**
    + **d** : is the vector **[1,d1,....,d_q]**
    + **sig** : resid=[ sig*echap(1),....,];





Description
~~~~~~~~~~~

armax1 is used to identify the coefficients of a 1-dimensional ARX
process:


::

    
    
       A(z^-1)y= B(z^-1)u + D(z^-1)sig*e(t)
       e(t) is a 1-dimensional white noise with variance 1.
       A(z)= 1+a1*z+...+a_r*z^r; ( r=0 => A(z)=1)
       B(z)= b0+b1*z+...+b_s z^s ( s=-1 => B(z)=0)
       D(z)= 1+d1*z+...+d_q*z^q  ( q=0 => D(z)=1)
       
        


for the method, see Eykhoff in trends and progress in system
identification) page 96. with


::

    
                z(t)=[y(t-1),..,y(t-r),u(t),...,
                      u(t-s),e(t-1),...,e(t-q)] 
        


and


::

    
                coef= [-a1,..,-ar,b0,...,b_s,d1,...,d_q]'
                y(t)= coef'* z(t) + sig*e(t).
        


a sequential version of the AR estimation where e(t-i) is replaced by
an estimated value is used (RLLS). With q=0 this method is exactly a
sequential version of armax



Author
~~~~~~

J.-Ph.C; ;



