====
"HALT_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Halt
----



Library
~~~~~~~
Events


Description
~~~~~~~~~~~
This block has a unique input event port. Upon the arrival of an
event, the simulation is stopped and the main Scicos window is
activated. Simulation can be restarted or continued (Run button).


Dialog Box
~~~~~~~~~~
Set Halt block parameters State on halt 0

+ State on halt: A scalar value to be placed in the state of the
  block. For debugging purposes this allows to distinguish between
  different halts.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *hltblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/events/HALT_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine hltblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     Notify simulation to stop  when called 
    c     ipar(1) : stop reference
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          integer halt
          common /coshlt/ halt
    c
          if(flag.eq.2) then
             halt=1
             if(nipar.gt.0) then
                z(1)=ipar(1)
             else
                z(1)=0.0d0
             endif
          endif
          end



Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/HALT_f.htm#SECTION00552400000000000000
.. _Interfacing function: ://./scicos/HALT_f.htm#SECTION00552500000000000000
.. _Library: ://./scicos/HALT_f.htm#SECTION00552100000000000000
.. _Computational function (type 0): ://./scicos/HALT_f.htm#SECTION00552600000000000000
.. _Description: ://./scicos/HALT_f.htm#SECTION00552200000000000000
.. _Dialog Box: ://./scicos/HALT_f.htm#SECTION00552300000000000000


