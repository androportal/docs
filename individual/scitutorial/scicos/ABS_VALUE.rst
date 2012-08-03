====
"ABS_VALUE"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Absolute value
--------------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
The Abs block outputs the absolute value of the input.


Dialog Box
~~~~~~~~~~
Set block parameters use zero_crossing (1: yes) (0:no) 1

+ use zero_crossing : Select to enable zero crossing detection.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: yes
+ mode: yes
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *absolute_value*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/ABS_VALUE.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    #include "../machine.h"
    
    void  absolute_value(scicos_block *block,int flag)
    {
      int i,j;
      if (flag==1){
        if( block->ng>0){
          for(i=0;i<block->insz[0];++i){
    	if (get_phase_simulation()==1) {
    	  if (block->inptr[0][i]<0){
    	    j=2;
    	  } else{
    	    j=1;
    	  }
    	}else {
    	  j=block->mode[i];
    	}
    	if (j==1){
    	  block->outptr[0][i]=block->inptr[0][i];
    	} else{
    	  block->outptr[0][i]=-block->inptr[0][i];
    	}
          }
        }else{
          for(i=0;i<block->insz[0];++i){
    	if (block->inptr[0][i]<0){
    	  block->outptr[0][i]=-block->inptr[0][i];
    	}else{
    	  block->outptr[0][i]=block->inptr[0][i];
    	}
          }
        }
      }else if (flag==9){
        for(i=0;i<block->insz[0];++i){
          block->g[i]=block->inptr[0][i];
          if (get_phase_simulation()==1) {
    	if(block->g[i]<0){
    	  block->mode[i]=2;
    	}else{
    	  block->mode[i]=1;
    	}
          }
        }
      }
    }




Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/ABS_VALUE.htm#SECTION00541200000000000000
.. _Computational function (type 4): ://./scicos/ABS_VALUE.htm#SECTION00541600000000000000
.. _Dialog Box: ://./scicos/ABS_VALUE.htm#SECTION00541300000000000000
.. _Default properties: ://./scicos/ABS_VALUE.htm#SECTION00541400000000000000
.. _Library: ://./scicos/ABS_VALUE.htm#SECTION00541100000000000000
.. _Interfacing function: ://./scicos/ABS_VALUE.htm#SECTION00541500000000000000


