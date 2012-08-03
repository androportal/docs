====
"sm2des"
====

Scilab Function Last update : April 1993
**sm2des** - system matrix to descriptor



Calling Sequence
~~~~~~~~~~~~~~~~

[Des]=sm2des(Sm);




Parameters
~~~~~~~~~~


+ **Sm** : polynomial matrix (pencil system matrix)
+ **Des** : descriptor system ( **list('des',A,B,C,D,E)** )




Description
~~~~~~~~~~~

Utility function: converts the system matrix:


::

    
    
     Sm = [-sE + A   B;
          [    C     D]
       
        


to descriptor system **Des=list('des',A,B,C,D,E)** ).



See Also
~~~~~~~~

` **ss2des** `_,` **sm2ss** `_,

.. _
      : ://./control/sm2ss.htm
.. _
      : ://./control/ss2des.htm


