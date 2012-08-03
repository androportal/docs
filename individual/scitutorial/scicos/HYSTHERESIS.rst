====
"HYSTHERESIS"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Hystheresis
-----------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~
Hysthersis block.



Dialog Box
~~~~~~~~~~
Set parameters switch on at 1 switch off at 0 output when on 1 output
when off 0 use zero crossing: yes (1), no (0) 1

+ switch on at: the lower threshold
+ switch off at: the upper threshold
+ output when on: value of the output when on
+ output when off: value of the output when off
+ use zero crossing: matter only if input is continuously active.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: yes
+ mode: yes
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *hystheresis*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/HYSTHERESIS.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void  hystheresis(scicos_block *block,int flag)
    {
      if (flag==1){
        if (get_phase_simulation()==1) {
          if (*block->inptr[0]>=block->rpar[0]){
    	block->outptr[0][0]=block->rpar[2];
          }else if (*block->inptr[0]<=block->rpar[1]){
    	block->outptr[0][0]=block->rpar[3];
          }
        }else{
          if (block->mode[0]<2){
    	block->outptr[0][0]=block->rpar[3];
          }else{
    	block->outptr[0][0]=block->rpar[2];
          }
        } 
      } else if (flag==9){
        block->g[0]=*block->inptr[0]-(block->rpar[0]);
        block->g[1]=*block->inptr[0]-(block->rpar[1]);
        if (get_phase_simulation()==1) {
          if (block->g[0]>=0){
    	block->mode[0]=2;
          }else if (block->g[1]<=0){
    	block->mode[0]=1;
          }
        }
      }
    }



Ramine Nikoukhah 2004-06-22

.. _Dialog Box: ://./scicos/HYSTHERESIS.htm#SECTION005712300000000000000
.. _Description: ://./scicos/HYSTHERESIS.htm#SECTION005712200000000000000
.. _Computational function (type 4): ://./scicos/HYSTHERESIS.htm#SECTION005712600000000000000
.. _Library: ://./scicos/HYSTHERESIS.htm#SECTION005712100000000000000
.. _Interfacing function: ://./scicos/HYSTHERESIS.htm#SECTION005712500000000000000
.. _Default properties: ://./scicos/HYSTHERESIS.htm#SECTION005712400000000000000


