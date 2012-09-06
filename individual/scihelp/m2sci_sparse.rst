


sparse (Matlab function)
========================

Create sparse matrix



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `sparse`_



::

    `sparse`_




Particular cases
~~~~~~~~~~~~~~~~

*Equivalence table*

Matlab

Scilab

Comment

sparse(A)

sparse(A)



sparse(m,n)

sparse([],[],[m,n])



sparse(i,j,s)

sparse([i,j],s)

This equivalence is true considering *i*, *j* and *s* have the same
length and that *i* and *j* are column vectors.

sparse(i,j,s,m,n)

sparse([i,j],s,[m,n])

This equivalence is true considering *i*, *j* and *s* have the same
length and that *i* and *j* are column vectors.

sparse(i,j,s,m,n,nzmax) : There is no Scilab equivalent for this use
of Matlab *sparse*.



