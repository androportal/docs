====
"projspec"
====

Scilab Function Last update : April 1993
**projspec** - spectral operators



Calling Sequence
~~~~~~~~~~~~~~~~

[S,P,D,i]=projspec(A)




Parameters
~~~~~~~~~~


+ **A** : square matrix
+ **S, P, D** : square matrices
+ **i** : integer (index of the zero eigenvalue of **A** ).




Description
~~~~~~~~~~~

Spectral characteristics of **A** at 0.

**S** = reduced resolvent at 0 ( **S** = -Drazin_inverse( **A** )).

**P** = spectral projection at 0.

**D** = nilpotent operator at 0.

**index** = index of the 0 eigenvalue.

One has **(s*eye()-A)^(-1) = D^(i-1)/s^i +... + D/s^2 + P/s - S -
s*S^2 -...** around the singularity s=0.



Examples
~~~~~~~~


::

    
    
    deff('j=jdrn(n)','j=zeros(n,n);for k=1:n-1;j(k,k+1)=1;end')
    A=sysdiag(jdrn(3),jdrn(2),rand(2,2));X=rand(7,7);
    A=X*A*inv(X);
    [S,P,D,index]=projspec(A);
    index   //size of J-block
    trace(P)  //sum of dimensions of J-blocks
    A*S-(eye()-P)
    norm(D^index,1)
     
      




See Also
~~~~~~~~

` **coff** `_,



Author
~~~~~~

F. D.; ;

.. _
      : ://./linear/coff.htm


