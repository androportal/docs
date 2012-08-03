====
"gcare"
====

Scilab Function Last update : April 1993
**gcare** - control Riccati equation



Calling Sequence
~~~~~~~~~~~~~~~~

[X,F]=gcare(Sl)




Parameters
~~~~~~~~~~


+ **Sl** : linear system ( **syslin** list)
+ **X** : symmetric matrix
+ **F** : real matrix




Description
~~~~~~~~~~~

Generalized Control Algebraic Riccati Equation (GCARE). **X** =
solution , **F** = gain.

The GCARE for **Sl=[A,B,C,D]** is:


::

    
    
    (A-B*Si*D'*C)'*X+X*(A-B*Si*D'*C)-X*B*Si*B'*X+C'*Ri*C=0
       
        


where **S=(eye()+D'*D)** , **Si=inv(S)** , **R=(eye()+D*D')** ,
**Ri=inv(R)** and **F=-Si*(D'*C+B'*X)** is such that **A+B*F** is
stable.



See Also
~~~~~~~~

` **gfare** `_,

.. _
      : ://./robust/gfare.htm


