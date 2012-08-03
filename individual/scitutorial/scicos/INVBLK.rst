====
"INVBLK"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Inverse
-------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
This block computes . The input (output) size is determined by the
context


Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *invblk4*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/INVBLK.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

       
    #include "scicos_block.h"
    #include 
    
    void invblk4(scicos_block *block,int flag)
    {
      /* Copyright INRIA
         
      Scicos block simulator
      Outputs the inverse of the input */
      
      int i;
      double ww;
      if (flag == 6){
        for(i=0;i< block->insz[0];i++){
          ww=block->inptr[0][i];
          if (ww != 0.0)
    	block->outptr[0][i]=1.0/ww;
        }
      }
      if (flag == 1){
        for(i=0;i< block->insz[0];i++){
          ww=block->inptr[0][i];
          if (ww != 0.0)
    	block->outptr[0][i]=1.0/ww;
          else{
    	set_block_error(-2);
    	return;
          }
        }
      } 
    }




Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/INVBLK.htm#SECTION00546300000000000000
.. _Description: ://./scicos/INVBLK.htm#SECTION00546200000000000000
.. _Library: ://./scicos/INVBLK.htm#SECTION00546100000000000000
.. _Computational function (type 0): ://./scicos/INVBLK.htm#SECTION00546500000000000000
.. _Interfacing function: ://./scicos/INVBLK.htm#SECTION00546400000000000000


