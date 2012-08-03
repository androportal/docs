====
"GENSIN_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Sin generator
-------------



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
This block is a sine wave generator:


Dialog Box
~~~~~~~~~~
Set Gen_SIN Block Magnitude 1 Frequency 1 phase 0

+ Magnitude: a scalar. The magnitude M.
+ Frequency: a scalar. The frequency F.
+ phase: a scalar. The phase P.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *gensin*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/GENSIN_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine gensin(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     Sine genrator
    c     ampl=rpar(1)
    c     freq=rpar(2)
    c     phase=rpar(3)
    c
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
    c
             y(1)=rpar(1)*sin(rpar(2)*t+rpar(3))
          end




Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/GENSIN_f.htm#SECTION005113200000000000000
.. _Computational function (type 0): ://./scicos/GENSIN_f.htm#SECTION005113600000000000000
.. _Library: ://./scicos/GENSIN_f.htm#SECTION005113100000000000000
.. _Interfacing function: ://./scicos/GENSIN_f.htm#SECTION005113500000000000000
.. _Dialog Box: ://./scicos/GENSIN_f.htm#SECTION005113300000000000000
.. _Default properties: ://./scicos/GENSIN_f.htm#SECTION005113400000000000000


