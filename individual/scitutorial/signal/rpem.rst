====
"rpem"
====

Scilab Function Last update : April 1993
**rpem** - RPEM estimation



Calling Sequence
~~~~~~~~~~~~~~~~

[w1,[v]]=rpem(w0,u0,y0,[lambda,[k,[c]]])




Parameters
~~~~~~~~~~


+ **a,b,c** : **a=[a(1),...,a(n)], b=[b(1),...,b(n)],
  c=[c(1),...,c(n)]**
+ **w0** : **list(theta,p,phi,psi,l)** where:

    + **theta** : [a,b,c] is a real vector of order **3*n**
    + **p** : (3*n x 3*n) real matrix.
    + **phi,psi,l** : real vector of dimension **3*n**
  During the first call on can take:

::

    
    
    theta=phi=psi=l=0*ones(1,3*n). p=eye(3*n,3*n)
       
              


+ **u0** : real vector of inputs (arbitrary size) (if no input take
  **u0=[ ]** ).
+ **y0** : vector of outputs (same dimension as **u0** if **u0** is
  not empty). ( **y0(1)** is not used by rpem). If the time domain is
  **(t0,t0+k-1)** the **u0** vector contains the inputs
  **u(t0),u(t0+1),..,u(t0+k-1)** and **y0** the outputs
  **y(t0),y(t0+1),..,y(t0+k-1)**




Description
~~~~~~~~~~~

Recursive estimation of parameters in an ARMAX model. Uses Ljung-
Soderstrom recursive prediction error method. Model considered is the
following:


::

    
    
    y(t)+a(1)*y(t-1)+...+a(n)*y(t-n)=
    b(1)*u(t-1)+...+b(n)*u(t-n)+e(t)+c(1)*e(t-1)+...+c(n)*e(t-n)
       
        




The effect of this command is to update the estimation of unknown
parameter **theta=[a,b,c]** with

**a=[a(1),...,a(n)], b=[b(1),...,b(n)], c=[c(1),...,c(n)]** .



Optional parameters
~~~~~~~~~~~~~~~~~~~


