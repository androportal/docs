====
"INTRPLBLK_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Interpolation
-------------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
The output of this block is a function of the input obtained by linear
interpolation. This block has a single scalar input and a single
scalar output port. The coord. and coord. give respectively the
coordinate and the coordinate of the data points to be interpolated.
coord must be strictly increasing.


Dialog Box
~~~~~~~~~~
Set Interpolation block parameters X coord. [0;1] Y coord. [0;1]

+ X coord.:A vector (strictly increasing).
+ Y coord.:A vector (same size as coord).




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *intrpl*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/INTRPLBLK_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine intrpl(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u1,nu1,y1,ny1)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     ipar(1) : the number of input
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*)
          double precision y1,u1
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*),i
          integer nipar
    c
    c    
          do 100 i=2,nrpar/2
             if (u1.le.rpar(i)) goto 200 
     100  continue
          i=nrpar/2
     200  continue
          y1=rpar(nrpar/2+i-1) + ((rpar(nrpar/2+i)-rpar(nrpar/2+i-1))/
         $     (rpar(i)-rpar(i-1)))*(u1-rpar(i-1))
          return
          end
    



Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/INTRPLBLK_f.htm#SECTION00545300000000000000
.. _Description: ://./scicos/INTRPLBLK_f.htm#SECTION00545200000000000000
.. _Computational function (type 0): ://./scicos/INTRPLBLK_f.htm#SECTION00545600000000000000
.. _Library: ://./scicos/INTRPLBLK_f.htm#SECTION00545100000000000000
.. _Interfacing function: ://./scicos/INTRPLBLK_f.htm#SECTION00545500000000000000
.. _Default properties: ://./scicos/INTRPLBLK_f.htm#SECTION00545400000000000000


