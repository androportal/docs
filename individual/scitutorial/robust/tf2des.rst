====
"tf2des"
====

Scilab Function Last update : April 1993
**tf2des** - transfer function to descriptor



Calling Sequence
~~~~~~~~~~~~~~~~

S=tf2des(G)
S=tf2des(G,flag)




Parameters
~~~~~~~~~~


+ **G** : linear system ( **syslin** list) with possibly polynomial
  **D** matrix
+ **flag** : character string **"withD"**
+ **S** : list




Description
~~~~~~~~~~~

Transfer function to descriptor form: **S=list('d',A,B,C,D,E)**


::

    
    
      E*xdot = A*x+B*u
      y = C*x + D*u
       
        


Note that **D=0** if the optional parameter flag= **"withD"** is not
given. Otherwise a maximal rank **D** matrix is returned in the fifth
entry of the list **S**



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    G=[1/(s-1),s;1,2/s^3];
    S1=tf2des(G);des2tf(S1)
    S2=tf2des(G,"withD");des2tf(S2)
     
      




See Also
~~~~~~~~

` **pol2des** `_,` **tf2ss** `_,` **ss2des** `_,` **des2tf** `_,

.. _
      : ://./robust/../control/des2tf.htm
.. _
      : ://./robust/../polynomials/pol2des.htm
.. _
      : ://./robust/../control/ss2des.htm
.. _
      : ://./robust/../control/tf2ss.htm


