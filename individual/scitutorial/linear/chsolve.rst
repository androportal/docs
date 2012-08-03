====
"chsolve"
====

Scilab Function Last update : 28/06/2006
**chsolve** - sparse Cholesky solver



Calling Sequence
~~~~~~~~~~~~~~~~

sol=chsolve(spcho,rhs)




Parameters
~~~~~~~~~~


+ **spcho** : list containing the Cholesky factors in coded form
  returned by chfact
+ **rhs, sol** : full column vectors




Description
~~~~~~~~~~~

**sol=chsolve(spcho,rhs)** computes the solution of **rhs=A*sol** ,
with **A** a symmetric sparse positive definite matrix. This function
is based on the Ng-Peyton programs (ORNL). See the Fortran programs
for a complete description of the variables in **spcho** .



Examples
~~~~~~~~


::

    
        
        A=sprand(20,20,0.1);
        A=A*A'+eye();  
        spcho=chfact(A);
        sol=(1:20)';rhs=A*sol;
        spcho=chfact(A);
        chsolve(spcho,rhs)
        
      




See Also
~~~~~~~~

` **chfact** `_,` **sparse** `_,` **lufact** `_,` **luget** `_,`
**spchol** `_,

.. _
      : ://./linear/spchol.htm
.. _
      : ://./linear/lufact.htm
.. _
      : ://./linear/../elementary/sparse.htm
.. _
      : ://./linear/chfact.htm
.. _
      : ://./linear/luget.htm


