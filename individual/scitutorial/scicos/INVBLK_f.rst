====
"INVBLK_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Inverse
-------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
This block computes . The input (output) size is determined by the
context


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
+ name of computational function: *invblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/INVBLK_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine invblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     Outputs the inverse of the input
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    
          double precision ww
    c
          if(flag.eq.6) then
             do 10 i=1,nu
                ww=u(i)
                if(ww.ne.0.0d0) then
                   y(i)=1.0d0/ww
                endif
     10         continue
          endif
    c
          if(flag.eq.1) then
             do 15 i=1,nu
                ww=u(i)
                if(ww.ne.0.0d0) then
                   y(i)=1.0d0/ww
                else
                   flag=-2
                   return
                endif
     15      continue
          endif
          end




Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/INVBLK_f.htm#SECTION00546200000000000000
.. _Default properties: ://./scicos/INVBLK_f.htm#SECTION00546300000000000000
.. _Interfacing function: ://./scicos/INVBLK_f.htm#SECTION00546400000000000000
.. _Library: ://./scicos/INVBLK_f.htm#SECTION00546100000000000000
.. _Computational function (type 0): ://./scicos/INVBLK_f.htm#SECTION00546500000000000000


