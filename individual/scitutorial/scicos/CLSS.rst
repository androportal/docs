====
"CLSS"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Continuous state-space system
-----------------------------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block realizes a continuous-time linear state-space system.

(4.1) (4.2)


The system is defined by the matrices and the initial state . The
dimensions must be compatible.


Dialog Box
~~~~~~~~~~
Set continuous linear system parameters A matrix -1 B matrix 1 C
matrix 1 D matrix 0 Initial state 0

+ matrix: square matrix. The matrix
+ B matrix: the matrix, [] if system has no input
+ C matrix: the matrix , [] if system has no output
+ D matrix: the matrix, [] if system has no D term.
+ Initial state: A vector/scalar initial state of the system.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: yes
+ discrete-time state: no
+ name of computational function: *csslti4*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/CLSS.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine csslti(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    c     Scicos block simulator
    c     continuous state space linear system simulator
    c     rpar(1:nx*nx)=A
    c     rpar(nx*nx+1:nx*nx+nx*nu)=B
    c     rpar(nx*nx+nx*nu+1:nx*nx+nx*nu+nx*ny)=C
    c     rpar(nx*nx+nx*nu+nx*ny+1:nx*nx+nx*nu+nx*ny+ny*nu)=D
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          la=1
          lb=nx*nx+la
          lc=lb+nx*nu
    
          if(flag.eq.1.or.flag.eq.6) then
    c     y=c*x+d*u     
             ld=lc+nx*ny
             call dmmul(rpar(lc),ny,x,nx,y,ny,ny,nx,1)
             call dmmul1(rpar(ld),ny,u,nu,y,ny,ny,nu,1)
    c         if(t.gt.64.0) write(6,'(e15.8,10(e10.3,x))') t,x(1),x(2),
    c     $        u(1),y(1) 
          elseif(flag.eq.0) then
    c     xd=a*x+b*u
             call dmmul(rpar(la),nx,x,nx,xd,nx,nx,nx,1)
             call dmmul1(rpar(lb),nx,u,nu,xd,nx,nx,nu,1)
    c         if(t.gt.64.0) write(6,'(e15.8,10(e10.3,x))') t,x(1),x(2),
    c     $        xd(1),xd(2),u(1)
          endif
          return
          end



Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/CLSS.htm#SECTION005812300000000000000
.. _Computational function (type 4): ://./scicos/CLSS.htm#SECTION005812600000000000000
.. _Description: ://./scicos/CLSS.htm#SECTION005812200000000000000
.. _Interfacing function: ://./scicos/CLSS.htm#SECTION005812500000000000000
.. _Library: ://./scicos/CLSS.htm#SECTION005812100000000000000
.. _Default properties: ://./scicos/CLSS.htm#SECTION005812400000000000000


