====
"pencan"
====

Scilab Function Last update : April 1993
**pencan** - canonical form of matrix pencil



Calling Sequence
~~~~~~~~~~~~~~~~

[Q,M,i1]=pencan(Fs)
[Q,M,i1]=pencan(E,A)




Parameters
~~~~~~~~~~


+ **Fs** : a regular pencil **s*E-A**
+ **E,A** : two real square matrices
+ **Q,M** : two non-singular real matrices
+ **i1** : integer




Description
~~~~~~~~~~~

Given the regular pencil **Fs=s*E-A** , **pencan** returns matrices
**Q** and **M** such than **M*(s*E-A)*Q** is in "canonical" form.

**M*E*Q** is a block matrix


::

    
    
    [I,0;
     0,N]
       
        


with **N** nilpotent and **i1** = size of the **I** matrix above.

**M*A*Q** is a block matrix:


::

    
    
    [Ar,0;
     0,I]
       
        




Examples
~~~~~~~~


::

    
    
    F=randpencil([],[1,2],[1,2,3],[]);
    F=rand(6,6)*F*rand(6,6);
    [Q,M,i1]=pencan(F);
    W=clean(M*F*Q)
    roots(det(W(1:i1,1:i1)))
    det(W($-2:$,$-2:$))
     
      




See Also
~~~~~~~~

` **glever** `_,` **penlaur** `_,` **rowshuff** `_,



Author
~~~~~~

F. D.; ;

.. _
      : ://./linear/rowshuff.htm
.. _
      : ://./linear/glever.htm
.. _
      : ://./linear/penlaur.htm


