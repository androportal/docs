====
"DEMUX"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Demultiplexer
-------------



Library
~~~~~~~
Branching


Description
~~~~~~~~~~~
Given a vector valued input this block splits inputs over vector
valued outputs. So , where are numbered from top to bottom. Input and
Output port sizes are determined by the context.


Dialog Box
~~~~~~~~~~
Set DEMUX block parameters number of output ports or vector of sizes 2

+ number of output ports or vector of sizes:positive integer less than
  or equal to .




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 0
+ number/sizes of outputs: 2 / -1 -2
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *multiplex*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/DEMUX.sci


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
.. _Computational function (type 4): ://./scicos/DEMUX.htm#SECTION00531600000000000000
.. _Description: ://./scicos/DEMUX.htm#SECTION00531200000000000000
.. _Dialog Box: ://./scicos/DEMUX.htm#SECTION00531300000000000000
.. _Default properties: ://./scicos/DEMUX.htm#SECTION00531400000000000000
.. _Interfacing function: ://./scicos/DEMUX.htm#SECTION00531500000000000000
.. _Library: ://./scicos/DEMUX.htm#SECTION00531100000000000000


