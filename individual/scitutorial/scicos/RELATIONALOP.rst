====
"RELATIONALOP"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Relational operation
--------------------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~
Comparison operator. The output is 0 or 1.



Dialog Box
~~~~~~~~~~
Set parameters Operator: == (0),= (1), (2), = (3), = (4), (5) 2 Use
zero crossing (no: 0), (yes: 1) 0

+ Operator: integer for the following operators: equal (0), not equal
  (1), less (2), less or equal (3), larger or equal (4), larger (5)
+ Use zero crossing : 0 or 1




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
+ name of computational function: *relationalop*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/RELATIONALOP.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    
    void relationalop(scicos_block *block,int flag)
    {
      int i;
      i=block->ipar[0];
      if(flag==1){
        if ((block->ng!=0)&(get_phase_simulation()==2))
          {
    	block->outptr[0][0]=block->mode[0]-1.0;
          }
        else {
          switch (i)
    	{
    	case 0:
    	  if(block->inptr[0][0]==block->inptr[1][0]) {
    	    block->outptr[0][0]=1.0;
    	  }else{
    	    block->outptr[0][0]=0.0;
    	  }
    	  break;
    	  
    	case 1:
    	  if(block->inptr[0][0]!=block->inptr[1][0]) {
    	    block->outptr[0][0]=1.0;
    	  }else{
    	    block->outptr[0][0]=0.0;
    	  }
    	  break;
    	case 2:
    	  if(block->inptr[0][0]<block->inptr[1][0]) {
    	    block->outptr[0][0]=1.0;
    	  }else{
    	    block->outptr[0][0]=0.0;
    	  }
    	  break;    
    	case 3:
    	  if(block->inptr[0][0]<block->inptr[1][0]) {
    	    block->outptr[0][0]=1.0;
    	  }else{
    	    block->outptr[0][0]=0.0;
    	  }
    	  break;    
    	case 4:
    	  if(block->inptr[0][0]<=block->inptr[1][0]) {
    	    block->outptr[0][0]=1.0;
    	  }else{
    	    block->outptr[0][0]=0.0;
    	  }
    	  break;   
    	case 5:
    	  if(block->inptr[0][0]>=block->inptr[1][0]) {
    	    block->outptr[0][0]=1.0;
    	  }else{
    	    block->outptr[0][0]=0.0;
    	  }
    	  break;   
    	case 6:
    	  if(block->inptr[0][0]>block->inptr[1][0]) {
    	    block->outptr[0][0]=1.0;
    	  }else{
    	    block->outptr[0][0]=0.0;
    	  }
    	  break;
    	}
        }
    
      }else if(flag==9){
        block->g[0]=block->inptr[0][0]-block->inptr[1][0];
        if (get_phase_simulation()==1) {
          switch (i)
    	{
    	case 0:
    	  if(block->inptr[0][0]==block->inptr[1][0]) {
    	    block->mode[0]=2.0;
    	  }else{
    	    block->mode[0]=1.0;
    	  }
    	  break;
    	  
    	case 1:
    	  if(block->inptr[0][0]!=block->inptr[1][0]) {
    	    block->mode[0]=2.0;
    	  }else{
    	    block->mode[0]=1.0;
    	  }
    	  break;
    	case 2:
    	  if(block->inptr[0][0]<block->inptr[1][0]) {
    	    block->mode[0]=2.0;
    	  }else{
    	    block->mode[0]=1.0;
    	  }
    	  break;    
    	case 3:
    	  if(block->inptr[0][0]<block->inptr[1][0]) {
    	    block->mode[0]=2.0;
    	  }else{
    	    block->mode[0]=1.0;
    	  }
    	  break;    
    	case 4:
    	  if(block->inptr[0][0]<=block->inptr[1][0]) {
    	    block->mode[0]=2.0;
    	  }else{
    	    block->mode[0]=1.0;
    	  }
    	  break;   
    	case 5:
    	  if(block->inptr[0][0]>=block->inptr[1][0]) {
    	    block->mode[0]=2.0;
    	  }else{
    	    block->mode[0]=1.0;
    	  }
    	  break;   
    	case 6:
    	  if(block->inptr[0][0]>block->inptr[1][0]) {
    	    block->mode[0]=2.0;
    	  }else{
    	    block->mode[0]=1.0;
    	  }
    	  break;
    	}
        }
      }
    }




Ramine Nikoukhah 2004-06-22

.. _Description: ://./scicos/RELATIONALOP.htm#SECTION005714200000000000000
.. _Computational function (type 4): ://./scicos/RELATIONALOP.htm#SECTION005714600000000000000
.. _Dialog Box: ://./scicos/RELATIONALOP.htm#SECTION005714300000000000000
.. _Default properties: ://./scicos/RELATIONALOP.htm#SECTION005714400000000000000
.. _Library: ://./scicos/RELATIONALOP.htm#SECTION005714100000000000000
.. _Interfacing function: ://./scicos/RELATIONALOP.htm#SECTION005714500000000000000


