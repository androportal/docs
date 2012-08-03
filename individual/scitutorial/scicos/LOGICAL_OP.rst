====
"LOGICAL_OP"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Logical operation
-----------------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~
The Logical Operator block performs the specified logical operation on
its inputs. An input value is TRUE (1) if it is nonzero and FALSE (0)
if it is zero.


Dialog Box
~~~~~~~~~~
Set parameters number of inputs 2 Operator: AND (0), OR (1), NAND (2),
NOR (3), XOR (4), NOT (5) 0

+ number of inputs: The number of block inputs. The value must be
  appropriate for the selected operator.
+ Operator: AND : The logical operator to be applied to the block
  inputs. Valid choices are the operators from the list.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 2 / -1 -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *logicalop*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/LOGICAL_OP.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void logicalop(scicos_block *block,int flag)
    {
      int i,j,k,l;
      i=block->ipar[0];
      switch (i)
        {
        case 0:
          if (block->nin==1)
    	{
    	  block->outptr[0][0]=1.0;
    	  for (j=0;j<block->insz[0];j++) {
    	    if(block->inptr[0][j]<=0)
    	      {
    		block->outptr[0][0]=0.0;
    		break;
    	      }
    	  }
    	}
          else {
    	for (j=0;j<block->insz[0];j++) {
    	  block->outptr[0][j]=1.0;
    	  for (k=0;k<block->nin;k++) {
    	    if(block->inptr[k][j]<=0) {
    	      block->outptr[0][j]=0.0;
    	      break;
    	    }
    	  }
    	}
          }
          break;
          
        case 1:
          if (block->nin==1)
    	{
    	  block->outptr[0][0]=0.0;
    	  for (j=0;j<block->insz[0];j++) {
    	    if(block->inptr[0][j]>0) {
    	      block->outptr[0][0]=1.0;
    	      break;
    	    }
    	  }
    	}
          else {
    	for (j=0;j<block->insz[0];j++) {
    	  block->outptr[0][j]=0.0;
    	  for (k=0;k<block->nin;k++) {
    	    if(block->inptr[k][j]>0) {
    	      block->outptr[0][j]=1.0;
    	      break;
    	    }
    	  }
    	}
          }
          break;
    
        case 2:
          if (block->nin==1)
    	{
    	  block->outptr[0][0]=0.0;
    	  for (j=0;j<block->insz[0];j++) {
    	    if(block->inptr[0][j]<=0)
    	      {
    		block->outptr[0][0]=1.0;
    		break;
    	      }
    	  }
    	}
          else {
    	for (j=0;j<block->insz[0];j++) {
    	  block->outptr[0][j]=0.0;
    	  for (k=0;k<block->nin;k++) {
    	    if(block->inptr[k][j]<=0) {
    	      block->outptr[0][j]=1.0;
    	      break;
    	    }
    	  }
    	}
          }
          break;
    
        case 3:
          if (block->nin==1)
    	{
    	  block->outptr[0][0]=1.0;
    	  for (j=0;j<block->insz[0];j++) {
    	    if(block->inptr[0][j]>0) {
    	      block->outptr[0][0]=0.0;
    	      break;
    	    }
    	  }
    	}
          else {
    	for (j=0;j<block->insz[0];j++) {
    	  block->outptr[0][j]=1.0;
    	  for (k=0;k<block->nin;k++) {
    	    if(block->inptr[k][j]>0) {
    	      block->outptr[0][j]=0.0;
    	      break;
    	    }
    	  }
    	}
          }
          break;
    
        case 4:
          if (block->nin==1)
    	{
    	  l=0;
    	  for (j=0;j<block->insz[0];j++) {
    	    if(block->inptr[0][j]>0) {
    	      l=(l+1)%2;
    	    }
    	  }
    	  block->outptr[0][0]=(double) l;
    	}
          else {
    	for (j=0;j<block->insz[0];j++) {
    	  l=0;
    	  for (k=0;k<block->nin;k++) {
    	    if(block->inptr[k][j]>0) {
    	      l=(l+1)%2;
    	    }
    	  }
    	  block->outptr[0][j]=(double) l;
    	}
          }
          break;
    
        case 5:
          for (j=0;j<block->insz[0];j++) {
    	if(block->inptr[0][j]>0) {
    	  block->outptr[0][j]=0.0;
    	}
    	else{
    	  block->outptr[0][j]=1.0;
    	}
          }
        }
    }



Ramine Nikoukhah 2004-06-22
.. _Interfacing function: ://./scicos/LOGICAL_OP.htm#SECTION005713500000000000000
.. _Library: ://./scicos/LOGICAL_OP.htm#SECTION005713100000000000000
.. _Default properties: ://./scicos/LOGICAL_OP.htm#SECTION005713400000000000000
.. _Dialog Box: ://./scicos/LOGICAL_OP.htm#SECTION005713300000000000000
.. _Computational function (type 4): ://./scicos/LOGICAL_OP.htm#SECTION005713600000000000000
.. _Description: ://./scicos/LOGICAL_OP.htm#SECTION005713200000000000000


