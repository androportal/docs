====
"MUX"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Multiplexer
-----------



Library
~~~~~~~
Branching


Description
~~~~~~~~~~~
Given vector valued inputs this block merges inputs in an single
output vector. So , where are numbered from top to bottom. Input and
Output port sizes are determined by the context.


Dialog Box
~~~~~~~~~~
Set MUX block parameters number of input ports or vector of sizes 2

+ number of input ports or vector of sizes:integer greater than or
  equal to 1 and less than 8.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 2 / -1 -2
+ number/sizes of outputs: 1 / 0
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *multiplex*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/MUX.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void multiplex(scicos_block *block,int flag)
    {
      int i,j,k;
      if (block->nin==1){
        k=0;
        for (i=0;i<block->nout;++i){
          for (j=0;j<block->outsz[i];++j){
    	block->outptr[i][j]=block->inptr[0][k];
    	++k;
          }
        }
      }else {
        k=0;
        for (i=0;i<block->nin;++i){
          for (j=0;j<block->insz[i];++j){
    	block->outptr[0][k]=block->inptr[i][j];
    	++k;
          }
        }
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Library: ://./scicos/MUX.htm#SECTION00532100000000000000
.. _Interfacing function: ://./scicos/MUX.htm#SECTION00532500000000000000
.. _Default properties: ://./scicos/MUX.htm#SECTION00532400000000000000
.. _Dialog Box: ://./scicos/MUX.htm#SECTION00532300000000000000
.. _Description: ://./scicos/MUX.htm#SECTION00532200000000000000
.. _Computational function (type 4): ://./scicos/MUX.htm#SECTION00532600000000000000


