====
"SATURATION"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Saturation
----------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
The Saturation block imposes upper and lower bounds on a signal. When
the input signal is within the range specified by the Lower limit and
Upper limit parameters, the input signal passes through unchanged.
When the input signal is outside these bounds, the signal is clipped
to the upper or lower bound. When the Lower limit and Upper limit
parameters are set to the same value, the block outputs that value.


Dialog Box
~~~~~~~~~~
Set Saturation parameters Upper limit 1 Lower limit -1 zero crossing
(0:no, 1:yes) 1

+ Upper limit: Specify the upper bound on the input signal. When the
  input signal to the Saturation block is above this value, the output
  of the block is clipped to this value.
+ Lower limit: Specify the lower bound on the input signal. When the
  input signal to the Saturation block is below this value, the output
  of the block is clipped to this value.
+ zero crossing : Select to enable zero crossing detection.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: yes
+ mode: yes
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *satur*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/SATURATION.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void  satur(scicos_block *block,int flag)
    {/* rpar[0]:upper limit,  rpar[1]:lower limit */
      if (flag==1){
        if (get_phase_simulation()==1||block->ng==0) {
          if (*block->inptr[0]>=block->rpar[0]){
    	block->outptr[0][0]=block->rpar[0];
          }else if (*block->inptr[0]<=block->rpar[1]){
    	block->outptr[0][0]=block->rpar[1];
          }else {
    	block->outptr[0][0]=block->inptr[0][0];
          }
        }else{
          if (block->mode[0]==1){
    	block->outptr[0][0]=block->rpar[0];
          }else if(block->mode[0]==2) {
    	block->outptr[0][0]=block->rpar[1];
          }else{
    	block->outptr[0][0]=block->inptr[0][0];
          } 
        }
      } else if (flag==9){
        block->g[0]=*block->inptr[0]-(block->rpar[0]);
        block->g[1]=*block->inptr[0]-(block->rpar[1]);
        if (get_phase_simulation()==1) {
          if (block->g[0]>=0){
    	block->mode[0]=1;
          }else if (block->g[1]<=0){
    	block->mode[0]=2;
          }else {
    	block->mode[0]=3;
          }
        }
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Library: ://./scicos/SATURATION.htm#SECTION005415100000000000000
.. _Interfacing function: ://./scicos/SATURATION.htm#SECTION005415500000000000000
.. _Default properties: ://./scicos/SATURATION.htm#SECTION005415400000000000000
.. _Dialog Box: ://./scicos/SATURATION.htm#SECTION005415300000000000000
.. _Description: ://./scicos/SATURATION.htm#SECTION005415200000000000000
.. _Computational function (type 4): ://./scicos/SATURATION.htm#SECTION005415600000000000000


