====
"lqe"
====

Scilab Function Last update : 23/03/2004
**lqe** - linear quadratic estimator (Kalman Filter)



Calling Sequence
~~~~~~~~~~~~~~~~

[K,X]=lqe(P21)




Parameters
~~~~~~~~~~


+ **P21** : **syslin** list
+ **K, X** : real matrices




Description
~~~~~~~~~~~

**lqe** returns the Kalman gain for the filtering problem in
continuous or discrete time.

**P21** is a **syslin** list representing the system
**P21=[A,B1,C2,D21] P21=syslin('c',A,B1,C2,D21) or
P21=syslin('d',A,B1,C2,D21)**

The input to **P21** is a white noise with variance:


::

    
    
         [B1 ]               [Q  S]
    BigV=[   ] [ B1' D21'] = [    ]
         [D21]               [S' R]
       
        


**X** is the solution of the stabilizing Riccati equation and
**A+K*C2** is stable.

In continuous time:


::

    
    
    (A-S*inv(R)*C2)*X+X*(A-S*inv(R)*C2)'-X*C2'*inv(R)*C2*X+Q-S*inv(R)*S'=0
       
        



::

    
    
    K=-(X*C2'+S)*inv(R)
       
        


In discrete time:


::

    
    
    X=A*X*A'-(A*X*C2'+B1*D21')*pinv(C2*X*C2'+D21*D21')*(C2*X*A'+D21*B1')+B1*B1'
       
        


**K=-(A*X*C2'+B1*D21')*pinv(C2*X*C2'+D21*D21')**

**xhat(t+1)= E(x(t+1)| y(0),...,y(t))** (one-step predicted **x** )
satisfies the recursion:


::

    
    
    xhat(t+1)=(A+K*C2)*xhat(t) - K*y(t).
       
        




Examples
~~~~~~~~


::

    
    
    //Assume the equations
    //.
    //x = Ax + Ge
    //y = Cx + v
    //with
    //E ee' = Q_e,    Evv' = R,    Eev' = N 
    //
    //This is equivalent to
    //.
    //x = Ax  + B1 w
    //y = C2x + D21 w
    //with E { [Ge ]  [Ge v]' } = E { [B1w ] [B1w D21w]' } = bigR =
    //         [ v ]                  [D21w]    
    //
    //[B1*B1'  B1*D21';
    // D21*B1'  D21*D21']  
    //=
    //[G*Q_e*G' G*N;
    // N*G' R]
    
    //To find (B1,D21) given (G,Q_e,R,N) form bigR =[G*Q_e*G' G*N;N'*G' R].
    //Then [W,Wt]=fullrf(bigR);  B1=W(1:size(G,1),:);
    //D21=W(($+1-size(C2,1)):$,:)
    //
    //P21=syslin('c',A,B1,C2,D21);
    //[K,X]=lqe(P21);
    
    //Example:
    nx=5;ne=2;ny=3;
    A=-diag(1:nx);G=ones(nx,ne);
    C=ones(ny,nx); Q_e(ne,ne)=1; R=diag(1:ny); N=zeros(ne,ny);
    bigR =[G*Q_e*G' G*N;N'*G' R];
    [W,Wt]=fullrf(bigR);B1=W(1:size(G,1),:);
    D21=W(($+1-size(C,1)):$,:);
    C2=C;
    P21=syslin('c',A,B1,C2,D21);
    [K,X]=lqe(P21);
    //Riccati check:
    S=G*N;Q=B1*B1';
    (A-S*inv(R)*C2)*X+X*(A-S*inv(R)*C2)'-X*C2'*inv(R)*C2*X+Q-S*inv(R)*S'
    
    //Stability check:
    spec(A+K*C)
     
      




See Also
~~~~~~~~

` **lqr** `_,` **observer** `_,



Author
~~~~~~

F. D.

.. _
      : ://./control/observer.htm
.. _
      : ://./control/lqr.htm


