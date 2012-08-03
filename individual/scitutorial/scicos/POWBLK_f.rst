====
"POWBLK_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Pow
---



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
This block realizes . The input and output port sizes are determined
by the compiler according to the connected blocks port sizes.


Dialog Box
~~~~~~~~~~
Set u block parameters to the power of 1.5

+ to the power of:real scalar




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *powblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/POWBLK_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine powblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     rpar(1) is power
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
    c     
          if (nrpar.eq.1) then
             do 15 i=1,nu
                if(u(i).lt.0.d0) then
                   if (flag.ge.4) return
                   flag=-2
                   return
                elseif(u(i).eq.0.d0.and.rpar(1).le.0) then
                   if (flag.ge.4) return
                   flag=-2
                   return
                endif
                y(i)=u(i)**rpar(1)
     15      continue
          else
             do 25 i=1,nu
                if(ipar(1).le.0.and.u(i).eq.0.0d0) then
                   if (flag.ge.4) return  
                   flag=-2
                   return
                endif
                y(i)=u(i)**ipar(1)
     25      continue
          endif
          
          end




Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/POWBLK_f.htm#SECTION005410400000000000000
.. _Interfacing function: ://./scicos/POWBLK_f.htm#SECTION005410500000000000000
.. _Library: ://./scicos/POWBLK_f.htm#SECTION005410100000000000000
.. _Computational function (type 0): ://./scicos/POWBLK_f.htm#SECTION005410600000000000000
.. _Description: ://./scicos/POWBLK_f.htm#SECTION005410200000000000000
.. _Dialog Box: ://./scicos/POWBLK_f.htm#SECTION005410300000000000000


