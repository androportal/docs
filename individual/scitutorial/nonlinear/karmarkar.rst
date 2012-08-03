====
"karmarkar"
====

Scilab Function Last update : April 1993
**karmarkar** - karmarkar algorithm



Calling Sequence
~~~~~~~~~~~~~~~~

[x1]=karmarkar(a,b,c,x0)




Parameters
~~~~~~~~~~


+ **a** : matrix (n,p)
+ **b** : n - vector
+ **c** : p - vector
+ **x0** : initial vector
+ **eps** : threshold (default value : 1.d-5)
+ **gamma** : descent step **0<gamma<1** , default value : 1/4
+ **x1** : solution
+ **crit** : value of c'*x1




Description
~~~~~~~~~~~

Computes **x** which minimizes


::

    
    
                            c'*x
       
        


under constraints:


::

    
    
                            a*x = b
                            x>=0
       
        




Examples
~~~~~~~~


::

    
    
    // n=10;p=20;
    // a=rand(n,p);c=rand(p,1);x0=abs(rand(p,1));b=a*x0;x1=karmarkar(a,b,c,x0);
     
      




