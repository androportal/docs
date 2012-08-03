====
"systmat"
====

Scilab Function Last update : April 1993
**systmat** - system matrix



Calling Sequence
~~~~~~~~~~~~~~~~

[Sm]=systmat(Sl);




Parameters
~~~~~~~~~~


+ **Sl** : linear system ( **syslin** list) or descriptor system
+ **Sm** : matrix pencil




Description
~~~~~~~~~~~

System matrix of the linear system **Sl** ( **syslin** list) in state-
space form (utility function).


::

    
    
     Sm = [-sI + A   B;
          [    C     D]
       
        


For a descriptor system ( **Sl=list('des',A,B,C,D,E)** ), **systmat**
returns:


::

    
    
     Sm = [-sE + A   B;
          [    C     D]
       
        




See Also
~~~~~~~~

` **ss2des** `_,` **sm2des** `_,` **sm2ss** `_,

.. _
      : ://./polynomials/../control/sm2des.htm
.. _
      : ://./polynomials/../control/ss2des.htm
.. _
      : ://./polynomials/../control/sm2ss.htm


