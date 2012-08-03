====
"markp2ss"
====

Scilab Function Last update : April 1993
**markp2ss** - Markov parameters to state-space



Calling Sequence
~~~~~~~~~~~~~~~~

[sl]=markp2ss(markpar,n,nout,nin)




Parameters
~~~~~~~~~~


+ **markpar** : matrix
+ **n,nout,nin** : integers
+ **Sl** : **syslin** list




Description
~~~~~~~~~~~

given a set of **n** Markov parameters stacked in the (row)-matrix
**markpar** of size **nout** X **(n*nin) markp2ss** returns a state-
space linear system **sl** ( **syslin** list) such that with
**[A,B,C,D]=abcd(sl)** :


::

    
    
       C*B = markpar(1:nout,1:nin),
       C*A*B =markpar(1:nout,nin+1:2*nin),....
       
        




Examples
~~~~~~~~


::

    
    
    W=ssrand(2,3,4);   //random system with 2 outputs and 3 inputs
    [a,b,c,d]=abcd(W);
    markpar=[c*b,c*a*b,c*a^2*b,c*a^3*b,c*a^4*b];
    S=markp2ss(markpar,5,2,3);
    [A,B,C,D]=abcd(S);
    Markpar=[C*B,C*A*B,C*A^2*B,C*A^3*B,C*A^4*B];
    norm(markpar-Markpar,1)
    //Caution... c*a^5*b is not C*A^5*B !
     
      




See Also
~~~~~~~~

` **frep2tf** `_,` **tf2ss** `_,` **imrep2ss** `_,

.. _
      : ://./control/imrep2ss.htm
.. _
      : ://./control/tf2ss.htm
.. _
      : ://./control/frep2tf.htm


