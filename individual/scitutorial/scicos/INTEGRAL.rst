====
"INTEGRAL"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Integration
-----------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block is an integrator. The output is the integral of the input.


Dialog Box
~~~~~~~~~~
Set Integral block parameters Initial Condition 0 With re-
intialization (1:yes, 0:no) 0 With saturation (1:yes, 0:no) 0 Upper
limit 1 Lower limit -1

+ Initial Condition: A vector/scalar initial conditions.
+ With re-intialization : To reset its state to the specified initial
  condition based on an external signal select **1**.
+ With saturation : If selected, limits the states to a value between
  the Lower saturation limit and Upper saturation limit parameters.
+ Upper limit:The upper limit for the integral.
+ Lower limit:The lower limit for the integral.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: yes
+ discrete-time state: no
+ name of computational function: *integral_func*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/INTEGRAL.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    
    #include "scicos_block.h"
    #include 
    
    void  integral_func(scicos_block *block,int flag)
    {int i;
      if (flag==0){
        if(block->ng>0){
          for(i=0;inx;++i) {
    	if(block->mode[i]==3){
    	  block->xd[i]=block->inptr[0][i];
    	}else{
    	  block->xd[i]=0.0;
    	}
          }
        }else{
          for(i=0;inx;++i) {
    	block->xd[i]=block->inptr[0][i];
          }
        }
      }else if (flag==1||flag==6){
        for(i=0;inx;++i) {
          block->outptr[0][i]=block->x[i];
        }
      }else if (flag==2&>nevprt==1){
        for(i=0;inx;++i) {
          block->x[i]=block->inptr[1][i];
        }
      } else if (flag==9){
        for(i=0;inx;++i) {
          if (block->mode[i]==3){
    	block->g[i]=(block->x[i]-(block->rpar[i]))*(block->x[i]-(block->rpar[block->nx+i]));
          } else {
    	block->g[i]=block->inptr[0][i];
          } 
          if (get_phase_simulation()==1) {
    	if (block->inptr[0][i]>=0&>x[i]>=block->rpar[i]){
    	  block->mode[i]=1;
    	}else if (block->inptr[0][i]<=0&>x[i]<=block->rpar[block->nx+i]){
    	  block->mode[i]=2;
    	}else {
    	  block->mode[i]=3;
    	}
          }
        }
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Interfacing function: ://./scicos/INTEGRAL.htm#SECTION005814500000000000000
.. _Library: ://./scicos/INTEGRAL.htm#SECTION005814100000000000000
.. _Computational function (type 4): ://./scicos/INTEGRAL.htm#SECTION005814600000000000000
.. _Description: ://./scicos/INTEGRAL.htm#SECTION005814200000000000000
.. _Default properties: ://./scicos/INTEGRAL.htm#SECTION005814400000000000000
.. _Dialog Box: ://./scicos/INTEGRAL.htm#SECTION005814300000000000000


