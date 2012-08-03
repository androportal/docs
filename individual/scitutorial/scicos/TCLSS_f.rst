====
"TCLSS_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 1)`_







Continuous linear system with jump
----------------------------------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block realizes a continuous-time linear state-space system with
the possibility of jumps in the state. The number of inputs to this
block is two. The first input is the regular input of the linear
system, the second carries the new value of the state which is copied
into the state when an event arrives at the unique event input port of
this block. That means the state of the system jumps to the value
present on the second input (of size equal to that of the state). The
system is defined by the matrices and the initial state . The
dimensions must be compatible. The sizes of inputs and outputs are
adjusted automatically.


Dialog Box
~~~~~~~~~~
Set continuous linear system parameters A matrix 0 B matrix 1 C matrix
1 D matrix 0 Initial state 0

+ A matrix: square matrix. The **A **matrix
+ B matrix: the **B** matrix
+ C matrix: the **C** matrix
+ D matrix: the **D** matrix
+ Initial state : vector. The initial state of the system.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 2 / 1 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: yes
+ discrete-time state: no
+ name of computational function: *tcslti*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/TCLSS_f.sci


Computational function (type 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine tcslti(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u1,nu1,u2,nu2,y,ny)
    c     Scicos block simulator
    c     continuous state space linear system simulator
    c     rpar(1:nx*nx)=A
    c     rpar(nx*nx+1:nx*nx+nx*nu)=B
    c     rpar(nx*nx+nx*nu+1:nx*nx+nx*nu+nx*ny)=C
    c     rpar(nx*nx+nx*nu+nx*ny+1:nx*nx+nx*nu+nx*ny+ny*nu)=D
    c!
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*)
          double precision u1(*),u2(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu1,nu2,ny
    
    c
          la=1
          lb=nx*nx+la
          lc=lb+nx*nu1
    
          if(flag.eq.1.or.flag.eq.6) then
    c     y=c*x+d*u1     
             ld=lc+nx*ny
             call dmmul(rpar(lc),ny,x,nx,y,ny,ny,nx,1)
             call dmmul1(rpar(ld),ny,u1,nu1,y,ny,ny,nu1,1)
          elseif(flag.eq.2.and.nevprt.eq.1) then
    c     x+=u2
             call dcopy(nx,u2,1,x,1)
          elseif(flag.eq.0.and.nevprt.eq.0) then
    c     xd=a*x+b*u1
             call dmmul(rpar(la),nx,x,nx,xd,nx,nx,nx,1)
             call dmmul1(rpar(lb),nx,u1,nu1,xd,nx,nx,nu1,1)
          endif
          return
          end



Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/TCLSS_f.htm#SECTION00582200000000000000
.. _Computational function (type 1): ://./scicos/TCLSS_f.htm#SECTION00582600000000000000
.. _Library: ://./scicos/TCLSS_f.htm#SECTION00582100000000000000
.. _Interfacing function: ://./scicos/TCLSS_f.htm#SECTION00582500000000000000
.. _Default properties: ://./scicos/TCLSS_f.htm#SECTION00582400000000000000
.. _Dialog Box: ://./scicos/TCLSS_f.htm#SECTION00582300000000000000


