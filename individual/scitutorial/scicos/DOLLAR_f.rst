====
"DOLLAR_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Register
--------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
A discrete delay block. When activated, internal state is copied on
the output and the input is copied into the internal state.



Dialog Box
~~~~~~~~~~
Set dollar block parameters initial condition 0

+ initial condition: Initial state of the discrete-time state




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
+ name of computational function: *dollar*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/DOLLAR_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine dollar(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     Ouputs delayed input
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          do 5 j=1,nu
             if(flag.eq.1.or.flag.eq.6.or.flag.eq.4) then
                y(j)=z(j)
             elseif(flag.eq.2) then
                z(j)=u(j)
             endif
     5    continue
          end




Ramine Nikoukhah 2004-06-22

.. _Computational function (type 0): ://./scicos/DOLLAR_f.htm#SECTION00583600000000000000
.. _Description: ://./scicos/DOLLAR_f.htm#SECTION00583200000000000000
.. _Interfacing function: ://./scicos/DOLLAR_f.htm#SECTION00583500000000000000
.. _Library: ://./scicos/DOLLAR_f.htm#SECTION00583100000000000000
.. _Default properties: ://./scicos/DOLLAR_f.htm#SECTION00583400000000000000
.. _Dialog Box: ://./scicos/DOLLAR_f.htm#SECTION00583300000000000000


