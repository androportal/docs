====
"LOGBLK_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Log
---



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
This block realizes . The input and output port sizes are determined
by the context.


Dialog Box
~~~~~~~~~~
Set log block parameters Basis ( 1) %e

+ Basis : A real scalar greater than 1.




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
+ name of computational function: *logblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/LOGBLK_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine logblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    
    c     Scicos block simulator
    c     y=log(u)/log(rpar(1))
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          if(flag.eq.1) then
             do 15 i=1,nu
                if(u(i).gt.0.0d0) then
                   y(i)=log(u(i))/log(rpar(1))
                else
                   flag=-2
                   return
                endif
     15      continue
          endif
          if(flag.eq.6) then
             do 20 i=1,nu
                if(u(i).gt.0.0d0) then
                   y(i)=log(u(i))/log(rpar(1))
                endif
     20      continue
          endif
    
          end




Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/LOGBLK_f.htm#SECTION00547400000000000000
.. _Interfacing function: ://./scicos/LOGBLK_f.htm#SECTION00547500000000000000
.. _Library: ://./scicos/LOGBLK_f.htm#SECTION00547100000000000000
.. _Computational function (type 0): ://./scicos/LOGBLK_f.htm#SECTION00547600000000000000
.. _Description: ://./scicos/LOGBLK_f.htm#SECTION00547200000000000000
.. _Dialog Box: ://./scicos/LOGBLK_f.htm#SECTION00547300000000000000


