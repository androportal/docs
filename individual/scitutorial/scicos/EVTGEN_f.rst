====
"EVTGEN_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Event generator
---------------



Library
~~~~~~~
Events


Description
~~~~~~~~~~~
One event is generated on the unique output event port if Event time
is larger than equal to zero, if not, no event is generated.


Dialog Box
~~~~~~~~~~
Set Event time Event Time 0

+ Event Time: scalar. date of the initial event




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 1 / 1
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *trash*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/events/EVTGEN_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine trash(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
    c
          return
          end




Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/EVTGEN_f.htm#SECTION005510200000000000000
.. _Computational function (type 0): ://./scicos/EVTGEN_f.htm#SECTION005510600000000000000
.. _Library: ://./scicos/EVTGEN_f.htm#SECTION005510100000000000000
.. _Interfacing function: ://./scicos/EVTGEN_f.htm#SECTION005510500000000000000
.. _Dialog Box: ://./scicos/EVTGEN_f.htm#SECTION005510300000000000000
.. _Default properties: ://./scicos/EVTGEN_f.htm#SECTION005510400000000000000


