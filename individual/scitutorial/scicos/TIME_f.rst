====
"TIME_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Time
----



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
This block is a time generator. The unique regular output is the
current time.


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
+ name of computational function: *timblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/TIME_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine timblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
    c     
          y(1)=t
    
          end




Ramine Nikoukhah 2004-06-22
.. _Interfacing function: ://./scicos/TIME_f.htm#SECTION005116400000000000000
.. _Default properties: ://./scicos/TIME_f.htm#SECTION005116300000000000000
.. _Description: ://./scicos/TIME_f.htm#SECTION005116200000000000000
.. _Computational function (type 0): ://./scicos/TIME_f.htm#SECTION005116500000000000000
.. _Library: ://./scicos/TIME_f.htm#SECTION005116100000000000000


