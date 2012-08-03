====
"INTRP2BLK_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 1)`_







2D interpolation
----------------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
The output of this block is a function of the inputs obtained by
bilinear interpolation. This block has two scalar inputs and a single
scalar output. The and give respectively the coordinate and the
coordinate of the -th data point to be interpolated and its value.


Dialog Box
~~~~~~~~~~
Set Interpolation block parameters X coord. [0;1] Y coord. [0;1] Z
values [0,1;1,2]

+ X coord.: an n-vector (strictly increasing)
+ Y coord.: an m-vector (strictly increasing)
+ Z values: an matrix




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 2 / 1 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *intrp2*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/INTRP2BLK_f.sci


Computational function (type 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine intrp2(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u1,nu1,u2,nu2,y1,ny1)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     ipar(1) : the number of input
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*)
          double precision y1,u1,u2
          double precision vx1,vx2,vy1,vy2,vz1,vz2,vz3,vz4
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*),i
          integer nipar
    c
    c    
          do 100 i=2,ipar(1)
             if (u1.le.rpar(i)) goto 200 
     100  continue
          i=ipar(1)
     200  do 300 j=2,ipar(2)
             if (u2.le.rpar(j+ipar(1))) goto 400 
     300  continue
          j=ipar(2)
     400  continue
          vy1=rpar(ipar(1)+j-1)
          vy2=rpar(ipar(1)+j)
          vz1=rpar(ipar(1)+ipar(2)+(i-2)*ipar(2)+j-1)
          vz4=rpar(ipar(1)+ipar(2)+(i-2)*ipar(2)+j)
          vz2=rpar(ipar(1)+ipar(2)+(i-1)*ipar(2)+j-1)
          vz3=rpar(ipar(1)+ipar(2)+(i-1)*ipar(2)+j)
          vx1=rpar(i-1)
          vx2=rpar(i)     
          y1=(1.0d0-(u2-vy1)/(vy2-vy1))*(vz1+(vz2-vz1)*(u1-vx1)/(vx2-vx1))
         $     +((u2-vy1)/(vy2-vy1))*(vz4+(vz3-vz4)*(u1-vx1)/(vx2-vx1))
          return
          end
    



Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/INTRP2BLK_f.htm#SECTION00544200000000000000
.. _Computational function (type 1): ://./scicos/INTRP2BLK_f.htm#SECTION00544600000000000000
.. _Dialog Box: ://./scicos/INTRP2BLK_f.htm#SECTION00544300000000000000
.. _Default properties: ://./scicos/INTRP2BLK_f.htm#SECTION00544400000000000000
.. _Library: ://./scicos/INTRP2BLK_f.htm#SECTION00544100000000000000
.. _Interfacing function: ://./scicos/INTRP2BLK_f.htm#SECTION00544500000000000000


