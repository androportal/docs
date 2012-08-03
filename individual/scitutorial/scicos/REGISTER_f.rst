====
"REGISTER_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Shift register
--------------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block realizes a shift register. At every input event, the
register is shifted one step.


Dialog Box
~~~~~~~~~~
Set delay parameters Register initial condition 0;0;0;0;0;0;0;0;0;0

+ Register initial condition: A column vector. It contains the initial
  state of the register.




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
+ name of computational function: *delay*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/REGISTER_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine delay(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     Ouputs nx*dt delayed input
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          if(flag.eq.1.or.flag.eq.4.or.flag.eq.6) then
             y(1)=z(1)
          elseif(flag.eq.2) then
    c     .  shift buffer   
             do 10 i=1,nz-1
                z(i)=z(i+1)
     10      continue
    c     .  add new point to the buffer
             z(nz)=u(1)
          endif
          end




Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/REGISTER_f.htm#SECTION00586300000000000000
.. _Description: ://./scicos/REGISTER_f.htm#SECTION00586200000000000000
.. _Computational function (type 0): ://./scicos/REGISTER_f.htm#SECTION00586600000000000000
.. _Library: ://./scicos/REGISTER_f.htm#SECTION00586100000000000000
.. _Interfacing function: ://./scicos/REGISTER_f.htm#SECTION00586500000000000000
.. _Default properties: ://./scicos/REGISTER_f.htm#SECTION00586400000000000000


