====
"DLSS_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 1)`_







Discrete state-space system
---------------------------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block realizes a discrete-time linear state-space system. The
system is defined by the matrices and the initial state . The
dimensions must be compatible. At the arrival of an input event on the
unique input event port, the state is updated.


Dialog Box
~~~~~~~~~~
Set discrete linear system parameters A matrix -1 B matrix 1 C matrix
1 D matrix 0 Initial state 0

+ A matrix: square matrix. The **A **matrix
+ B matrix: the **B** matrix
+ C matrix: the **C** matrix
+ D matrix: the **D** matrix
+ Initial state : vector. The initial state of the system.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *dsslti*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/DLSS_f.sci


Computational function (type 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine dsslti(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     discrete state space linear system simulator
    c     rpar(1:nx*nx)=A
    c     rpar(nx*nx+1:nx*nx+nx*nu)=B
    c     rpar(nx*nx+nx*nu+1:nx*nx+nx*nu+nx*ny)=C
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
          double precision w(100)
    c
    c
          la=1
          lb=nz*nz+la
          lc=lb+nz*nu
          if(flag.eq.4) then
             if(nz.gt.100) then
                flag=-1
                return
             endif
          elseif(flag.eq.2) then
    c     x+=a*x+b*u
             call dcopy(nz,z,1,w,1)
             call dmmul(rpar(la),nz,w,nz,z,nz,nz,nz,1)
             call dmmul1(rpar(lb),nz,u,nu,z,nz,nz,nu,1)
          elseif(flag.eq.1.or.flag.eq.6) then
    c     y=c*x+d*u
             ld=lc+nz*ny
             call dmmul(rpar(lc),ny,z,nz,y,ny,ny,nz,1)
             call dmmul1(rpar(ld),ny,u,nu,y,ny,ny,nu,1)
          endif
          end



Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/DLSS_f.htm#SECTION00585200000000000000
.. _Computational function (type 1): ://./scicos/DLSS_f.htm#SECTION00585600000000000000
.. _Library: ://./scicos/DLSS_f.htm#SECTION00585100000000000000
.. _Interfacing function: ://./scicos/DLSS_f.htm#SECTION00585500000000000000
.. _Default properties: ://./scicos/DLSS_f.htm#SECTION00585400000000000000
.. _Dialog Box: ://./scicos/DLSS_f.htm#SECTION00585300000000000000


