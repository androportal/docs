====
"recur"
====

Scilab Function Last update : April 1993
**recur** - a bilinear recurrent equation



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=recur(x0,var,k,n)
[integr]=logr(k,var)




Description
~~~~~~~~~~~

computes solutions of a bilinear recurrent equation


::

    
    
    x(i+1)=-x(i)*(k + sqrt(var)*br(i))
       
        


with initial value **x0** and driven by a white noise of variance
**var** .

Trajectories are drawn and the empirical Lyapunov exponent is returned
( **x(i)** is not to much different from **exp(y*i)** )

A theoretical computation of the Lyapunov exponent is given by


::

    
    
    [integr]=logr(k,var)
       
        




