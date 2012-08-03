====
"ss2des"
====

Scilab Function Last update : April 1993
**ss2des** - (polynomial) state-space to descriptor form



Calling Sequence
~~~~~~~~~~~~~~~~

S=ss2des(Sl)
S=ss2des(Sl,flag)




Parameters
~~~~~~~~~~


+ **Sl** : **syslin** list: proper or improper linear system.
+ **flag** : character string **"withD"**
+ **S** : list




Description
~~~~~~~~~~~

Given the linear system in state-space representation **Sl** (
**syslin** list), with a **D** matrix which is either polynomial or
constant, but not zero **ss2des** returns a descriptor system as
**list('des',A,B,C,0,E)** such that:


::

    
    
    Sl=C*(s*E-A)^(-1)*B
       
        


If the flag **"withD"** is given, ** S=list('des',A,B,C,D,E) ** with a
**D** matrix of maximal rank.



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    G=[1/(s+1),s;1+s^2,3*s^3];Sl=tf2ss(G);
    S=ss2des(Sl)
    S1=ss2des(Sl,"withD")
    Des=des2ss(S);Des(5)=clean(Des(5))
    Des1=des2ss(S1)
     
      




See Also
~~~~~~~~

` **pol2des** `_,` **tf2des** `_,` **des2ss** `_,



Author
~~~~~~

F. D.; ;

.. _
      : ://./control/../robust/des2ss.htm
.. _
      : ://./control/../polynomials/pol2des.htm
.. _
      : ://./control/../robust/tf2des.htm


