====
"GAINBLK"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Gain
----



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block is a gain block. The output is the Gain times the regular
input (vector). The dimensions of Gain determines the input (number of
columns) and output (number of rows) port sizes.


Dialog Box
~~~~~~~~~~
Set gain block parameters Gain 1

+ Gain: a real matrix.




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
+ name of computational function: *gainblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/GAINBLK.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    #include "../machine.h"
    extern void C2F(dmmul)();
    
    void gainblk(scicos_block *block,int flag)
    {
      int i,un=1;
      if (block->nrpar==1){
        for (i=0;i<block->insz[0];++i){
          block->outptr[0][i]=block->rpar[0]*block->inptr[0][i];
        }
      }else{
        C2F(dmmul)(block->rpar,&block->outsz[0],block->inptr[0],
    	       &block->insz[0],block->outptr[0],&block->outsz[0],
    	       &block->outsz[0],&block->insz[0],&un);
      }
    }




Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/GAINBLK.htm#SECTION00589300000000000000
.. _Default properties: ://./scicos/GAINBLK.htm#SECTION00589400000000000000
.. _Description: ://./scicos/GAINBLK.htm#SECTION00589200000000000000
.. _Library: ://./scicos/GAINBLK.htm#SECTION00589100000000000000
.. _Interfacing function: ://./scicos/GAINBLK.htm#SECTION00589500000000000000
.. _Computational function (type 4): ://./scicos/GAINBLK.htm#SECTION00589600000000000000


