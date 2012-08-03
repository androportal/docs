====
"M_SWITCH"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Multi-port switch
-----------------



Library
~~~~~~~
Branching


Description
~~~~~~~~~~~
Multiple switch block. The output comes from the input indiacted by
the control input.



Dialog Box
~~~~~~~~~~
Set parameters number of inputs 2 zero base indexing (0), otherwise 1
1 rounding rule: int (0), round (1), ceil (2), floor (3) 3

+ number of inputs: it changes the number of input ports
+ zero base indexing : how to count, from 0 or from 1.
+ rounding rule: if first input is not an integer, how should it be
  rounded to one.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 3 / 1 -1 -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *mswitch*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/M_SWITCH.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    #define max(a,b) ((a) >= (b) ? (a) : (b))
    #define min(a,b) ((a) <= (b) ? (a) : (b))
    
    void  mswitch(scicos_block *block,int flag)
    {
      int i,j;
      i=block->ipar[1];
      if (i==0) {
        if (*block->inptr[0]>0) {
          j=floor(*block->inptr[0]);
        }else{
          j=ceil(*block->inptr[0]);
        }
      }else if (i==1) {
        if (*block->inptr[0]>0) {
          j=floor(*block->inptr[0]+.5);
        }else{
          j=ceil(*block->inptr[0]-.5);
        }
      }else if (i==2) {
        j=ceil(*block->inptr[0]);
      }else if (i==3) {
        j=floor(*block->inptr[0]);
      }
      j=j+1-block->ipar[0];
      j=max(j,1);
      j=min(j,block->nin-1);
      for (i=0;i<block->insz[j];i++) {
        block->outptr[0][i]=block->inptr[j][i];
      }
    }




Ramine Nikoukhah 2004-06-22

.. _Dialog Box: ://./scicos/M_SWITCH.htm#SECTION005311300000000000000
.. _Default properties: ://./scicos/M_SWITCH.htm#SECTION005311400000000000000
.. _Description: ://./scicos/M_SWITCH.htm#SECTION005311200000000000000
.. _Library: ://./scicos/M_SWITCH.htm#SECTION005311100000000000000
.. _Interfacing function: ://./scicos/M_SWITCH.htm#SECTION005311500000000000000
.. _Computational function (type 4): ://./scicos/M_SWITCH.htm#SECTION005311600000000000000


