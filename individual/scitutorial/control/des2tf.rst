====
"des2tf"
====

Scilab Function Last update : April 1993
**des2tf** - descriptor to transfer function conversion



Calling Sequence
~~~~~~~~~~~~~~~~

[S]=des2tf(sl)
[Bfs,Bis,chis]=des2tf(sl)




Parameters
~~~~~~~~~~


+ **sl** : list (linear system in descriptor form)
+ **Bfs, Bis** : two polynomial matrices
+ **chis** : polynomial
+ **S** : rational matrix




Description
~~~~~~~~~~~

Given the linear system in descriptor form i.e.
**Sl=list('des',A,B,C,D,E)** , **des2tf** converts **sl** into its
transfer function representation:


::

    
    
    S=C*(s*E-A)^(-1)*B+D
       
        


Called with 3 outputs arguments **des2tf** returns **Bfs** and **Bis**
two polynomial matrices, and **chis** polynomial such that:


::

    
    
    S=Bfs/chis - Bis
       
        


**chis** is the determinant of **(s*E-A)** (up to a xcative constant);



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    G=[1/(s+1),s;1+s^2,3*s^3];
    Descrip=tf2des(G);Tf1=des2tf(Descrip)
    Descrip2=tf2des(G,"withD");Tf2=des2tf(Descrip2)
    [A,B,C,D,E]=Descrip2(2:6);Tf3=C*inv(s*E-A)*B+D
     
      




See Also
~~~~~~~~

` **glever** `_,` **pol2des** `_,` **tf2des** `_,` **ss2tf** `_,`
**des2ss** `_,` **rowshuff** `_,



Author
~~~~~~

F. D.

.. _
      : ://./control/../polynomials/pol2des.htm
.. _
      : ://./control/ss2tf.htm
.. _
      : ://./control/../linear/glever.htm
.. _
      : ://./control/../robust/des2ss.htm
.. _
      : ://./control/../linear/rowshuff.htm
.. _
      : ://./control/../robust/tf2des.htm


