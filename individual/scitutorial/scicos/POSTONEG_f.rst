====
"POSTONEG_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 1)`_







Threshold positive to negative
------------------------------



Library
~~~~~~~
Threshold


Description
~~~~~~~~~~~
An output event is generated when the unique input crosses zero with a
negative slope.


Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: yes
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 1 / 1
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *zcross*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/threshold/POSTONEG_f.sci


Computational function (type 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine zcross(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,g,ng)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     zero crossing block
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),g(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ng
    c   
    
          if ((flag.eq.3).and.(nevprt.lt.0)) then
             kev=0
             do 44 j = 1,ng
                kev=2*kev+abs(g(ng+1-j))
     44      continue
             do 45 j = 1,ng 
                kev=2*kev
                if (g(ng+1-j).eq.-1) kev=kev+1
     45      continue
    
             l=kev*ntvec
             do 10 i=1,ntvec
                tvec(i)=rpar(l+i)+t  
     10      continue
          elseif(flag.eq.9) then
             do 20 i=1,ng
                g(i)=u(i)  
     20      continue
          endif
          end




Ramine Nikoukhah 2004-06-22
.. _Library: ://./scicos/POSTONEG_f.htm#SECTION00562100000000000000
.. _Computational function (type 1): ://./scicos/POSTONEG_f.htm#SECTION00562500000000000000
.. _Interfacing function: ://./scicos/POSTONEG_f.htm#SECTION00562400000000000000
.. _Default properties: ://./scicos/POSTONEG_f.htm#SECTION00562300000000000000
.. _Description: ://./scicos/POSTONEG_f.htm#SECTION00562200000000000000


