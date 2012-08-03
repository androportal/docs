====
"BACKLASH"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Backlash
--------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~




Dialog Box
~~~~~~~~~~
Set backlash parameters initial output 0 gap 1 use zero-crossing
(0:no, 1:yes) 1

+ initial output: The initial value of the output.
+ gap: The gap where the output may remain constant.
+ use zero-crossing : Generate or not an event for zero-corssing.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: yes
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *backlash*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/BACKLASH.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    
    #include "scicos_block.h"
    #include <math.h>
    
    #if WIN32
    #define NULL    0
    #endif
    
    void backlash(scicos_block *block,int flag)
    { 
      double* rw,t;
      if (flag == 4){/* the workspace is used to store previous values */
        if ((*block->work=	 scicos_malloc(sizeof(double)* 4))== NULL ) {
          set_block_error(-16);
          return;
        }
        rw=*block->work; 
        t=get_scicos_time();
        rw[0]=t;
        rw[1]=t;
        rw[2]=block->rpar[0];
        rw[3]=block->rpar[0];
      }else  if (flag == 5){
        scicos_free(*block->work);
      }else  if (flag == 1) {
        rw=*block->work;
        t=get_scicos_time();
        if(t>rw[1]) {
          rw[0]=rw[1];
          rw[2]=rw[3];
        }
        rw[1]=t;
        if(block->inptr[0][0]>rw[2]+block->rpar[1]/2){
          rw[3]=block->inptr[0][0]-block->rpar[1]/2;
        } else if (block->inptr[0][0]<rw[2]-block->rpar[1]/2){
          rw[3]=block->inptr[0][0]+block->rpar[1]/2;
        } else {
          rw[3]=rw[2];
        }
        block->outptr[0][0]=rw[3];
      }  else if (flag == 9) {
        rw=*block->work;
        t=get_scicos_time();
        if(t>rw[1]){
          block->g[0] = block->inptr[0][0]-block->rpar[1]/2-rw[3];
          block->g[1] = block->inptr[0][0]+block->rpar[1]/2-rw[3];
        }else{
          block->g[0] = block->inptr[0][0]-block->rpar[1]/2-rw[2];
          block->g[1] = block->inptr[0][0]+block->rpar[1]/2-rw[2];
        }
      } 
    }




Ramine Nikoukhah 2004-06-22

.. _Library: ://./scicos/BACKLASH.htm#SECTION00578100000000000000
.. _Interfacing function: ://./scicos/BACKLASH.htm#SECTION00578500000000000000
.. _Default properties: ://./scicos/BACKLASH.htm#SECTION00578400000000000000
.. _Dialog Box: ://./scicos/BACKLASH.htm#SECTION00578300000000000000
.. _Description: ://./scicos/BACKLASH.htm#SECTION00578200000000000000
.. _Computational function (type 4): ://./scicos/BACKLASH.htm#SECTION00578600000000000000


