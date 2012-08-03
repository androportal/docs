====
"CONSTRAINT_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 10001)`_







Constraint
----------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~
Solves implicit equations by providing free output and forcing input
to be zero. This is an implicit block (beta testing stage).



Dialog Box
~~~~~~~~~~
Set Constraint block parameters Set number of constraints 1

+ Set number of constraints: indicate the number of constraints




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: yes
+ discrete-time state: no
+ name of computational function: *constraint*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/CONSTRAINT_f.sci


Computational function (type 10001)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine constraint(flag,nevprt,t,res,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c
          double precision t,xd(*),x(*),z(*),res(*),tvec(*),rpar(*)
          double precision u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          common /dbcos/ idb
    c     
          if (flag.eq.0) then
             do 12 i=1,nu
                res(i)=xd(i)-u(i)
                res(i+nu)=xd(i)
     12      continue
          elseif(flag.eq.1) then
             do 14 i=1,ny
                y(i)=xd(i+nu)
     14      continue
    c      elseif(flag.eq.6.or.flag.eq.7) then
    c         do 12 i=1,nu
    c 12      continue
          endif
          end




Ramine Nikoukhah 2004-06-22

.. _Interfacing function: ://./scicos/CONSTRAINT_f.htm#SECTION005711500000000000000
.. _Library: ://./scicos/CONSTRAINT_f.htm#SECTION005711100000000000000
.. _Default properties: ://./scicos/CONSTRAINT_f.htm#SECTION005711400000000000000
.. _Dialog Box: ://./scicos/CONSTRAINT_f.htm#SECTION005711300000000000000
.. _Computational function (type 10001): ://./scicos/CONSTRAINT_f.htm#SECTION005711600000000000000
.. _Description: ://./scicos/CONSTRAINT_f.htm#SECTION005711200000000000000


