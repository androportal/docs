====
"MAXMIN"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Max and Min
-----------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
The MinMax block outputs either the minimum or the maximum element or
elements of the inputs. You can choose the function to apply by
selecting one of the choices from the Function parameter list.


Dialog Box
~~~~~~~~~~
Set Max/Min block parameters Min (1) or Max (2) 2 Number of input
vectors (1 or 2) 1 zero-crossing (1: yes, 0;no) 1

+ Min : The function (min or max) to apply to the input.
+ Number of input vectors :The number of inputs to the block.
+ zero-crossing : Select to enable zero crossing detection to detect
  minimum and maximum values.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: yes
+ mode: yes
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *minmax*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/MAXMIN.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void minmax(scicos_block *block,int flag)
    { /*ipar[0]=1 -> min,  ipar[0]=2 -> max */
      
      int i,phase;
      double maxmin;
      phase=get_phase_simulation();
      if (flag == 1) {
        if(block->nin==1){
          if((block->ng==0)|(phase==1)){
    	maxmin=block->inptr[0][0];
    	for (i=1;i<block->insz[0];++i){
    	  if(block->ipar[0]==1){
    	    if(block->inptr[0][i]<maxmin)  maxmin=block->inptr[0][i];
    	  } else {
    	    if(block->inptr[0][i]>maxmin)  maxmin=block->inptr[0][i];
    	  }
    	}
          }else{
    	maxmin=block->inptr[0][block->mode[0]-1];
          }
          block->outptr[0][0]=maxmin;
    
        }else if (block->nin==2){
          for (i=0;i<block->insz[0];++i){
    	if((block->ng==0)|(phase==1)){
    	  if(block->ipar[0]==1){
    	    block->outptr[0][i]=min(block->inptr[0][i],block->inptr[1][i]);
    	  } else {
    	    block->outptr[0][i]=max(block->inptr[0][i],block->inptr[1][i]);
    	  }
    	}else{
    	  block->outptr[0][i]=block->inptr[block->mode[0]-1][i];
    	}
          }
        }
      } else if(flag == 9){
        if(block->nin==1){
          if(block->nin==1){
    	if (phase==2){
    	  for (i=0;i<block->insz[0];++i){
    	    if(i!=block->mode[0]-1){
    	      block->g[i]=block->inptr[0][i]-block->inptr[0][block->mode[0]-1];
    	    }else{
    	      block->g[i]=1.0;
    	    }
    	  }
    	} else if (phase==1){
    	  maxmin=block->inptr[0][0];
    	  for (i=1;i<block->insz[0];++i){
    	    block->mode[0]=1;
    	    if(block->ipar[0]==1){
    	      if(block->inptr[0][i]<maxmin) {
    		maxmin=block->inptr[0][i];
    		block->mode[0]=i+1;
    	      }
    	    } else {
    	      if(block->inptr[0][i]>maxmin) {
    		maxmin=block->inptr[0][i];
    		block->mode[0]=i+1;
    	      }
    	    }
    	  }
    	}
          }
        }else if(block->nin==2){
          for (i=0;i<block->insz[0];++i){
    	block->g[i]=block->inptr[0][i]-block->inptr[1][i];
    	if(phase==1){
    	  if(block->ipar[0]==1){
    	    if(block->g[i]>0) {
    	      block->mode[i]=2;
    	    }else{
    	      block->mode[i]=1;
    	    }
    	  }else{
    	    if(block->g[i]<0) {
    	      block->mode[i]=2;
    	    }else{
    	      block->mode[i]=1;
    	    }
    	  }
    	}
          }
        }
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/MAXMIN.htm#SECTION00549300000000000000
.. _Default properties: ://./scicos/MAXMIN.htm#SECTION00549400000000000000
.. _Interfacing function: ://./scicos/MAXMIN.htm#SECTION00549500000000000000
.. _Library: ://./scicos/MAXMIN.htm#SECTION00549100000000000000
.. _Computational function (type 4): ://./scicos/MAXMIN.htm#SECTION00549600000000000000
.. _Description: ://./scicos/MAXMIN.htm#SECTION00549200000000000000


