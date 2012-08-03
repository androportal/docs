====
"generic_block2"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 1)`_







Generic
-------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~
A generic interfacing function. Useful for testing new computational
functions.



Dialog Box
~~~~~~~~~~
Set GENERIC block parameters simulation function sinblk function type
(0,1,2,..) 1 input ports sizes 1 output port sizes 1 input event ports
sizes [] output events ports sizes [] initial continuous state []
initial discrete state [] Real parameters vector [] Integer parameters
vector [] number of modes 0 number of zero_crossings 0 initial firing
vector ( 0 for no firing) [] direct feedthrough (y or n) y time
dependence (y or n) n

+ simulation function: name of the simulation function
+ function type : currently 4 or 5, less for older types
+ input ports sizes: vector giving number and sizes
+ output port sizes: vector giving number and sizes
+ input event ports sizes: vector giving number and sizes; sizes must
  be 1
+ output events ports sizes: vector giving number and sizes; sizes
  must be 1
+ initial continuous state: column vector
+ initial discrete state: column vector
+ Real parameters vector: column vector
+ Integer parameters vector: column vector
+ number of modes: 0 in most cases
+ number of zero_crossings: number of zero-crossing surfaces
+ initial firing vector : vector of times, size must be the same as
  the number of event output ports
+ direct feedthrough : is the output an immediate function of the
  input
+ time dependence : is block always active




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
+ name of computational function: *sinblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/cos/generic_block2.sci


Computational function (type 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine sinblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
    c     
          do 15 i=1,nu
             y(i)=sin(u(i))
     15   continue
          
          end



Ramine Nikoukhah 2004-06-22

.. _Description: ://./scicos/generic_block2.htm#SECTION005715200000000000000
.. _Computational function (type 1): ://./scicos/generic_block2.htm#SECTION005715600000000000000
.. _Dialog Box: ://./scicos/generic_block2.htm#SECTION005715300000000000000
.. _Default properties: ://./scicos/generic_block2.htm#SECTION005715400000000000000
.. _Library: ://./scicos/generic_block2.htm#SECTION005715100000000000000
.. _Interfacing function: ://./scicos/generic_block2.htm#SECTION005715500000000000000


