====
"SWITCH2"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Switch2
-------



Library
~~~~~~~
Branching


Description
~~~~~~~~~~~
The Switch block passes through the first (top) input or the third
(bottom) input based on the value of the second (middle) input. The
first and third inputs are called data inputs. The second input is
called the control input. You select the conditions under which the
first input is passed with the Criteria for passing first input
parameter. You can make the block check whether the control input is
greater than or equal to the threshold value, purely greater than the
threshold value, or nonzero. If the control input meets the condition
set in the Criteria for passing first input parameter, then the first
input is passed. Otherwise, the third input is passed.


Dialog Box
~~~~~~~~~~
Set parameters pass first input if: u2 =a (0), u2 a (1), u2=a (2) 0
threshold a 0 use zero crossing: yes (1), no (0) 1

+ pass first input if: u2 =a : Select the conditions under which the
  first input is passed. You can make the block check whether the
  control input is greater than or equal to the threshold value, purely
  greater than the threshold value, or nonzero. If the control input
  meets the condition set in this parameter, then the first input is
  passed. Otherwise, the third input is passed.
+ threshold a:Assign the switch threshold that determines which input
  is passed to the output.
+ use zero crossing: yes : Select to enable zero crossing detection.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: yes
+ mode: yes
+ number/sizes of inputs: 3 / -1 1 -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *switch2*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/SWITCH2.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void  switch2(scicos_block *block,int flag)
    {
      int i,j,phase;
      if (flag == 1) {
        phase=get_phase_simulation();
        if (phase==1){
          i=2;
          if (*block->ipar==0){
    	if (*block->inptr[1]>=*block->rpar) i=0;
          }else if (*block->ipar==1){
    	if (*block->inptr[1]>*block->rpar) i=0;
          }else {
    	if (*block->inptr[1]!=*block->rpar) i=0;			     
          }
        }else{
          if(block->mode[0]==1){
    	i=0;
          }else if(block->mode[0]==2){
    	i=2;
          }
        }
        for (j=0;j<block->insz[0];j++) {
          block->outptr[0][j]=block->inptr[i][j];
        }
      }else if(flag == 9){
        phase=get_phase_simulation();
        block->g[0]=*block->inptr[1]-(*block->rpar);
        if (phase==1){
          i=2;
          if (*block->ipar==0){
    	if (block->g[0]>=0.0) i=0;
          }else if (*block->ipar==1){
    	if (block->g[0]>0.0) i=0;
          }else {
    	if (block->g[0]!=0.0) i=0;			     
          }
          if(i==0) {
    	block->mode[0]=1;
          }else{
    	block->mode[0]=2;
          }
        }
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/SWITCH2.htm#SECTION00538400000000000000
.. _Interfacing function: ://./scicos/SWITCH2.htm#SECTION00538500000000000000
.. _Library: ://./scicos/SWITCH2.htm#SECTION00538100000000000000
.. _Computational function (type 4): ://./scicos/SWITCH2.htm#SECTION00538600000000000000
.. _Description: ://./scicos/SWITCH2.htm#SECTION00538200000000000000
.. _Dialog Box: ://./scicos/SWITCH2.htm#SECTION00538300000000000000


