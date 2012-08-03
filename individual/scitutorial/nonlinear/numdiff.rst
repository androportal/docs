====
"numdiff"
====

Scilab Function Last update : 20/12/2004
**numdiff** - numerical gradient estimation



Calling Sequence
~~~~~~~~~~~~~~~~

g=numdiff(fun,x [,dx])




Parameters
~~~~~~~~~~


+ **fun** : an external, Scilab function or list. See below for
  calling sequence, see also external for details about external
  functions.
+ **x** : vector, the argument of the function **fun**
+ **dx** : vector, the finite difference step. Default value is
  **dx=sqrt(%eps)*(1+1d-3*abs(x))**
+ **g** : vector, the estimated gradient




Description
~~~~~~~~~~~

given a function **fun(x)** from **R^n** to **R^p** computes the
matrix **g** such as


::

    
    
        [   d f    ]
        [      i   ]
    g = [   ----   ]
     ij [   d x    ]
        [      j   ]
       
        


using finite difference methods.

The function fun calling sequence must be **y=fun(x,p1,p2,..pn)** .If
parameters **p1,p2,..pn** exist then **numdiff** can be called as
follow g=numdiff(list(fun,p1,p2,..pn),x).



Examples
~~~~~~~~


::

    
    
    function  f=myfun(x,y,z,t)
    f=(x+y)^t+z
    endfunction
    
    y=3;z=4;t=2;
    g=numdiff(list(myfun,3,4,2),1)
    
    x=1;
    exact=t*(x+y)^(t-1)
     
      




See Also
~~~~~~~~

` **optim** `_,

.. _
      : ://./nonlinear/optim.htm


