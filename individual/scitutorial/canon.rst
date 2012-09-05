


canon
=====

canonical controllable form



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Ac,Bc,U,ind]=canon(A,B)




Arguments
~~~~~~~~~

:Ac,Bc canonical form
: :U current basis (square nonsingular matrix)
: :ind vector of integers, controllability indices
:



Description
~~~~~~~~~~~

gives the canonical controllable form of the pair `(A,B)`.

`Ac=inv(U)*A*U, Bc=inv(U)*B`

The vector `ind` is made of the `epsilon_i`'s indices of the pencil
`[sI - A , B]` (decreasing order). For example with `ind=[3,2]`, `Ac`
and `Bc` are as follows:


::

    [*,*,*,*,*]           [*]
    [1,0,0,0,0]           [0]
    Ac=   [0,1,0,0,0]        Bc=[0]
    [*,*,*,*,*]           [*]
    [0,0,0,1,0]           [0]


If `(A,B)` is controllable, by an appropriate choice of `F` the `*`
entries of `Ac+Bc*F` can be arbitrarily set to desired values (pole
placement).



Examples
~~~~~~~~


::

    A=[1,2,3,4,5;
       1,0,0,0,0;
       0,1,0,0,0;
       6,7,8,9,0;
       0,0,0,1,0];
    B=[1,2;
       0,0;
       0,0;
       2,1;
       0,0];
    X=`rand`_(5,5);A=X*A*`inv`_(X);B=X*B;    //Controllable pair 
    [Ac,Bc,U,ind]=canon(A,B);  //Two indices --> ind=[3.2];
    index=1;for k=1:`size`_(ind,'*')-1,index=[index,1+`sum`_(ind(1:k))];end
    Acstar=Ac(index,:);Bcstar=Bc(index,:);
    s=`poly`_(0,'s');
    p1=s^3+2*s^2-5*s+3;p2=(s-5)*(s-3);   
    //p1 and p2 are desired closed-loop polynomials with degrees 3,2
    c1=`coeff`_(p1);c1=c1($-1:-1:1);c2=`coeff`_(p2);c2=c2($-1:-1:1);
    Acstardesired=[-c1,0,0;0,0,0,-c2];  
    //Acstardesired(index,:) is companion matrix with char. pol=p1*p2
    F=Bcstar\(Acstardesired-Acstar);   //Feedbak gain
    Ac+Bc*F         // Companion form 
    `spec`_(A+B*F/U)   // F/U is the gain matrix in original basis.




See Also
~~~~~~~~


+ `obsv_mat`_ observability matrix
+ `cont_mat`_ controllability matrix
+ `ctr_gram`_ controllability gramian
+ `contrss`_ controllable part
+ `ppol`_ pole placement
+ `contr`_ controllability, controllable subspace, staircase
+ `stabil`_ stabilization


.. _cont_mat: cont_mat.html
.. _stabil: stabil.html
.. _contr: contr.html
.. _obsv_mat: obsv_mat.html
.. _ppol: ppol.html
.. _contrss: contrss.html
.. _ctr_gram: ctr_gram.html


