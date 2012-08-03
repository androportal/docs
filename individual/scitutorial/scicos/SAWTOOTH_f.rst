====
"SAWTOOTH_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Sawtooth generator
------------------



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
This block is a sawtooth wave generator: output is from to where and
denote the times of two successive input events.


Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *sawtth*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/SAWTOOTH_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine sawtth(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
    c
          if (flag.eq.1.and.nevprt.eq.0) then
             y(1)=t-z(1)
          elseif (flag.eq.1.and.nevprt.eq.1) then
             y(1)=0.0d0
          elseif (flag.eq.2.and.nevprt.eq.1) then
             z(1)=t
          elseif (flag.eq.4) then
             z(1)=0.0d0
          endif
          return
          end




Ramine Nikoukhah 2004-06-22
.. _Interfacing function: ://./scicos/SAWTOOTH_f.htm#SECTION005110400000000000000
.. _Default properties: ://./scicos/SAWTOOTH_f.htm#SECTION005110300000000000000
.. _Computational function (type 0): ://./scicos/SAWTOOTH_f.htm#SECTION005110500000000000000
.. _Description: ://./scicos/SAWTOOTH_f.htm#SECTION005110200000000000000
.. _Library: ://./scicos/SAWTOOTH_f.htm#SECTION005110100000000000000


