====
"CONST_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 1)`_







Constant
--------



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
This block is a constant value(s) generator.


Dialog Box
~~~~~~~~~~
Set Contant Block Constant 1

+ Constant: a real vector. The vector size gives the size of the
  output port. The value **constants(i)** is assigned to the ith
  component of the output.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *cstblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/CONST_f.sci


Computational function (type 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine cstblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     output a vector of constants out(i)=rpar(i)
    c     rpar(1:nrpar) : given constants
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,ny
    
    c
    c
          call dcopy(nrpar,rpar,1,y,1)
          return
          end




Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/CONST_f.htm#SECTION00511200000000000000
.. _Computational function (type 1): ://./scicos/CONST_f.htm#SECTION00511600000000000000
.. _Library: ://./scicos/CONST_f.htm#SECTION00511100000000000000
.. _Interfacing function: ://./scicos/CONST_f.htm#SECTION00511500000000000000
.. _Dialog Box: ://./scicos/CONST_f.htm#SECTION00511300000000000000
.. _Default properties: ://./scicos/CONST_f.htm#SECTION00511400000000000000


