====
"ppol"
====

Scilab Function Last update : April 1993
**ppol** - pole placement



Calling Sequence
~~~~~~~~~~~~~~~~

[K]=ppol(A,B,poles)




Parameters
~~~~~~~~~~


+ **A,B** : real matrices of dimensions **nxn** and **nxm** .
+ **poles** : real or complex vector of dimension **n** .
+ **K** : real matrix (negative feedback gain)




Description
~~~~~~~~~~~

**K=ppol(A,B,poles)** returns a mxn gain matrix **K** such that the
eigenvalues of **A-B*K** are **poles** . The pair **(A,B)** must be
controllable. Complex number in **poles** must appear in conjugate
pairs.

An output-injection gain **F** for **(A,C)** is obtained as follows:

**Ft=ppol(A',C',poles); F=Ft'**

The algorithm is by P.H. Petkov.



Examples
~~~~~~~~


::

    
    
    A=rand(3,3);B=rand(3,2);
    F=ppol(A,B,[-1,-2,-3]);
    spec(A-B*F)
     
      




See Also
~~~~~~~~

` **canon** `_,` **stabil** `_,

.. _
      : ://./control/canon.htm
.. _
      : ://./control/stabil.htm


