====
"PRODUCT"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Product
-------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
The Product block performs multiplication or division of its inputs.
This block produces outputs using either element-wise or matrix
multiplication, depending on the value of the Multiplication
parameter. You specify the operations with the Number of inputs
parameter. Multiply(+1) and divide (-1) characters indicate the
operations to be performed on the inputs:


Dialog Box
~~~~~~~~~~
Set multiplication block parameters Number of inputs or sign vector
(multiplication: + 1, division: -1) [1;-1]

+ Number of inputs or sign vector : Enter the number of inputs.




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
+ name of computational function: *product*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/PRODUCT.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void product(scicos_block *block,int flag)
    {
      int j,k;
      if(flag==1){
        if (block->nin==1){
          block->outptr[0][0]=1.0;
          for (j=0;j<block->insz[0];j++) {
    	block->outptr[0][0]=block->outptr[0][0]*block->inptr[0][j];
          }
        }
        else {
          for (j=0;j<block->insz[0];j++) {
    	block->outptr[0][j]=1.0;
    	for (k=0;k<block->nin;k++) {
    	  if(block->ipar[k]>0){
    	    block->outptr[0][j]=block->outptr[0][j]*block->inptr[k][j];
    	  }else{
    	    if(block->inptr[k][j]==0){
    	      set_block_error(-2);
    	      return;
    	    }else{
    	      block->outptr[0][j]=block->outptr[0][j]/block->inptr[k][j];
    	    }
    	  }
    	}
          }
        }
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Interfacing function: ://./scicos/PRODUCT.htm#SECTION005412500000000000000
.. _Computational function (type 4): ://./scicos/PRODUCT.htm#SECTION005412600000000000000
.. _Dialog Box: ://./scicos/PRODUCT.htm#SECTION005412300000000000000
.. _Description: ://./scicos/PRODUCT.htm#SECTION005412200000000000000
.. _Default properties: ://./scicos/PRODUCT.htm#SECTION005412400000000000000
.. _Library: ://./scicos/PRODUCT.htm#SECTION005412100000000000000


