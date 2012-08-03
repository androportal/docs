====
"RAND_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Random generator
----------------



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~

This block is a random wave generator: each output component takes
piecewise constant random values. Every time an event is received on
the input event port, the outputs take new independent random values.
output port size is given by the size of **A** and ** B** vectors


Dialog Box
~~~~~~~~~~
Set Random generator block parameters flag = 1 : Normal distribution A
is mean and B deviation A and B must be vector with equal sizes seed
is the seed of random number generator (integer 2**31) flag 0 A 0 B 1
seed 7560437

+ flag:0 or 1. 0 for uniform distribution on and 1 for normal
  distribution.
+ A: scalar
+ B: scalar
+ seed: seed value for a sequence of random number.




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
+ name of computational function: *rndblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/RAND_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine rndblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c
    c     ipar(1) 
    c            0 : uniform
    c            1 : normal
    c     rpar(1:ny)=mean
    c     rpar(ny+1:2*ny)=deviation
    c     rpar(2*ny+1)=dt 
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          double precision urand,sr,si,t1
    
          integer halt
          common /coshlt/ halt
    c     
          if(flag.eq.1.or.flag.eq.6) then
          do 10 i=1,ny
             y(i)=rpar(i)+rpar(ny+i)*z(i+1)
     10   continue
          elseif(flag.eq.2.or.flag.eq.4) then
    c     uniform
             if(ipar(1).eq.0) then
                iy=int(z(1))
                do 20 i=1,nz-1
                   z(i+1)=urand(iy)
     20         continue
             else
                iy=int(z(1))
    c     normal
                do 30 i=1,nz-1
     75            sr=2.0d+0*urand(iy)-1.0d+0
                   si=2.0d+0*urand(iy)-1.0d+0
                   t1 = sr*sr+si*si
                   if (t1 .gt. 1.0d+0) go to 75
                   z(i+1) = sr*sqrt(-2.0d+0*log(t1)/t1)
     30         continue
             endif
             z(1)=iy
    c         if(ntvec.eq.1) tvec(1)=t+rpar(2*(nz-1)+1)
          endif
          return
          end



Ramine Nikoukhah 2004-06-22

.. _Description: ://./scicos/RAND_f.htm#SECTION00514200000000000000
.. _Computational function (type 0): ://./scicos/RAND_f.htm#SECTION00514600000000000000
.. _Dialog Box: ://./scicos/RAND_f.htm#SECTION00514300000000000000
.. _Library: ://./scicos/RAND_f.htm#SECTION00514100000000000000
.. _Default properties: ://./scicos/RAND_f.htm#SECTION00514400000000000000
.. _Interfacing function: ://./scicos/RAND_f.htm#SECTION00514500000000000000


