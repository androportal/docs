====
"QUANT_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Quantization
------------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
This block outputs the quantization of the input according to a choice
of methods:

#. Round method:
#. Truncation method:
#. Floor method:
#. Ceil method:




Dialog Box
~~~~~~~~~~
Set parameters Step 0.1 Quantization Type (1-4) 1

+ Step:scalar, Quantization step
+ Quantization Type : scalar with possible values 1,2,3 or 4
    : 1 : Round method
    : 2 : Truncation method
    : 3 : Floor method
    : 4 : Ceil method






Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *qzrnd*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/QUANT_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine qzrnd(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c
    c     Gives quantized signal by round method
    c     rpar(i) quantization step used for i input
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    
          integer i
    c
          do 15 i=1,nu
             if (u(i).lt.0.0d0)then
                y(i)=rpar(i)*(ANINT(u(i)/rpar(i)+0.5d0)-0.5d0)
             else
                y(i)=rpar(i)*(ANINT(u(i)/rpar(i)-0.5d0)+0.5d0)
             endif
     15   continue
          return
          end



Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/QUANT_f.htm#SECTION005413200000000000000
.. _Computational function (type 0): ://./scicos/QUANT_f.htm#SECTION005413600000000000000
.. _Library: ://./scicos/QUANT_f.htm#SECTION005413100000000000000
.. _Interfacing function: ://./scicos/QUANT_f.htm#SECTION005413500000000000000
.. _Default properties: ://./scicos/QUANT_f.htm#SECTION005413400000000000000
.. _Dialog Box: ://./scicos/QUANT_f.htm#SECTION005413300000000000000


