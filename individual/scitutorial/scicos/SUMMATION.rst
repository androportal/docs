====
"SUMMATION"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Sum
---



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~




Dialog Box
~~~~~~~~~~
Set sum block parameters Number of inputs or sign vector (of +1, -1)
[1;-1]

+ Number of inputs or sign vector :Select this parameter to require
  that all inputs must have the same data type.




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
+ name of computational function: *summation*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/SUMMATION.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void summation(scicos_block *block,int flag)
    {
      int j,k;
      if(flag==1){
        if (block->nin==1){
          block->outptr[0][0]=0.0;
          for (j=0;j<block->insz[0];j++) {
    	block->outptr[0][0]=block->outptr[0][0]+block->inptr[0][j];
          }
        }
        else {
          for (j=0;j<block->insz[0];j++) {
    	block->outptr[0][j]=0.0;
    	for (k=0;k<block->nin;k++) {
    	  if(block->ipar[k]>0){
    	    block->outptr[0][j]=block->outptr[0][j]+block->inptr[k][j];
    	  }else{
    	    block->outptr[0][j]=block->outptr[0][j]-block->inptr[k][j];
    	  }
    	}
          }
        }
      }
    }




Ramine Nikoukhah 2004-06-22

.. _Computational function (type 4): ://./scicos/SUMMATION.htm#SECTION005813600000000000000
.. _Description: ://./scicos/SUMMATION.htm#SECTION005813200000000000000
.. _Dialog Box: ://./scicos/SUMMATION.htm#SECTION005813300000000000000
.. _Default properties: ://./scicos/SUMMATION.htm#SECTION005813400000000000000
.. _Interfacing function: ://./scicos/SUMMATION.htm#SECTION005813500000000000000
.. _Library: ://./scicos/SUMMATION.htm#SECTION005813100000000000000


