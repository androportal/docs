====
"rowcomp"
====

Scilab Function Last update : 06/04/2006
**rowcomp** - row compression, range



Calling Sequence
~~~~~~~~~~~~~~~~

[W,rk]=rowcomp(A [,flag [,tol]])




Parameters
~~~~~~~~~~


+ **A** : real or complex matrix
+ **flag** : optionnal character string, with possible values
  **'svd'** or **'qr'** . The default value is **'svd'** .
+ **tol** : optionnal real non negative number. The default value is
  **sqrt(%eps)*norm(A,1)** .
+ **W** : square non-singular matrix (change of basis)
+ **rk** : integer (rank of **A** )




Description
~~~~~~~~~~~

Row compression of **A** . **Ac = W*A** is a row compressed matrix:
i.e. **Ac=[Af;0]** with **Af** full row rank.

**flag** and **tol** are optional parameters: **flag='qr'** or
**'svd'** (default **'svd'** ).

**tol** is a tolerance parameter.

The **rk** first columns of **W'** span the range of **A** .

The **rk** first (top) rows of **W** span the row range of **A** .

A non zero vector **x** belongs to range( **A** ) iff **W*x** is row
compressed in accordance with **Ac** i.e the norm of its last
components is small w.r.t its first components.



Examples
~~~~~~~~


::

    
        
        A=rand(5,2)*rand(2,4);              // 4 col. vectors, 2 independent.
        [X,dim]=rowcomp(A);Xp=X';
        svd([Xp(:,1:dim),A])                //span(A) = span(Xp(:,1:dim)
        x=A*rand(4,1);                      //x belongs to span(A)
        y=X*x  
        norm(y(dim+1:$))/norm(y(1:dim))     // small
        
      




See Also
~~~~~~~~

` **colcomp** `_,` **fullrf** `_,` **fullrfk** `_,



Author
~~~~~~

F. D.; INRIA



Used Function
~~~~~~~~~~~~~
The **rowcomp** function is based on the ` **svd** `_ or ` **qr** `_
decompositions.
.. _
    : ://./linear/qr.htm
.. _
    : ://./linear/svd.htm
.. _
      : ://./linear/fullrf.htm
.. _
      : ://./linear/colcomp.htm
.. _
      : ://./linear/fullrfk.htm


