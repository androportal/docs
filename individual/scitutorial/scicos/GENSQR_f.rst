====
"GENSQR_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Square wave generator
---------------------



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
This block is a square wave generator: output takes values -M and M .
Every time an event is received on the input event port, the output
switches from -M to M , or M to -M .


Dialog Box
~~~~~~~~~~
Set Square generator block parameters Amplitude 1

+ Amplitude: a scalar .




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *gensqr*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/GENSQR_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine gensqr(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     Square wave generator
    c     period=2*rpar(1)
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          double precision atol,rtol,ttol,deltat
          common /costol/ atol,rtol,ttol,deltat
    c
          if(flag.eq.2) then
             z(1)=-z(1)
          elseif(flag.eq.1.or.flag.eq.6) then
             y(1)=z(1)
          endif
          end




Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/GENSQR_f.htm#SECTION00512200000000000000
.. _Computational function (type 0): ://./scicos/GENSQR_f.htm#SECTION00512600000000000000
.. _Library: ://./scicos/GENSQR_f.htm#SECTION00512100000000000000
.. _Interfacing function: ://./scicos/GENSQR_f.htm#SECTION00512500000000000000
.. _Default properties: ://./scicos/GENSQR_f.htm#SECTION00512400000000000000
.. _Dialog Box: ://./scicos/GENSQR_f.htm#SECTION00512300000000000000


