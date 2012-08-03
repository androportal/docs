========
"SIGNUM"
========

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Signum
------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
The Sign block indicates the sign of the input:

+ The output is 1 when the input is greater than zero.
+ The output is 0 when the input is equal to zero.
+ The output is -1 when the input is less than zero.




Dialog Box
~~~~~~~~~~
Set block parameters use zero_crossing (1: yes) (0:no) 1

+ use zero_crossing : 0 or 1




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
+ name of computational function: *signum*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/SIGNUM.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void  signum(scicos_block *block,int flag)
    {
      int i,j;
      if (flag==1){
        for(i=0;i<block->insz[0];++i){
          if (get_phase_simulation()==1||block->ng==0) {
    	if (block->inptr[0][i]<0){
    	  j=2;
    	} else if (block->inptr[0][i]>0){
    	  j=1;
    	}else{
    	  j=0;
    	}
          }else {
    	j=block->mode[i];
          }
          if (j==1){
    	block->outptr[0][i]=1.0;
          } else if(j==2){
    	block->outptr[0][i]=-1.0;
          }else{
    	block->outptr[0][i]=0.0;
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
.. _Description: ://./scicos/SIGNUM.htm#SECTION005416200000000000000
.. _Computational function (type 4): ://./scicos/SIGNUM.htm#SECTION005416600000000000000
.. _Library: ://./scicos/SIGNUM.htm#SECTION005416100000000000000
.. _Interfacing function: ://./scicos/SIGNUM.htm#SECTION005416500000000000000
.. _Dialog Box: ://./scicos/SIGNUM.htm#SECTION005416300000000000000
.. _Default properties: ://./scicos/SIGNUM.htm#SECTION005416400000000000000


