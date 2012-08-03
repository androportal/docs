====
"DEADBAND"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Deadband
--------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~




Dialog Box
~~~~~~~~~~
Set Deadband parameters End of dead band 0.5 Start of dead band -0.5
zero crossing (0:no, 1:yes) 1

+ End of dead band: The value up to which the output remains zero.
+ Start of dead band: The value above which the output becomes zero.
+ zero crossing : Generate an event or not on zero-crossing.




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
+ name of computational function: *deadband*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/DEADBAND.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    void deadband(scicos_block *block,int flag)
    {/* rpar[0]:upper limit,  rpar[1]:lower limit */
      if (flag==1){
        if (get_phase_simulation()==1||block->ng==0) {
          if (*block->inptr[0]>=block->rpar[0]){
    	block->outptr[0][0]=*block->inptr[0]-block->rpar[0];
          }else if (*block->inptr[0]<=block->rpar[1]){
    	block->outptr[0][0]=*block->inptr[0]-block->rpar[1];
          }else {
    	block->outptr[0][0]=0.0;
          }
        }else{
          if (block->mode[0]==1){
    	block->outptr[0][0]=*block->inptr[0]-block->rpar[0];
          }else if(block->mode[0]==2) {
    	block->outptr[0][0]=*block->inptr[0]-block->rpar[1];
          }else{
    	block->outptr[0][0]=0.0;
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

.. _Dialog Box: ://./scicos/DEADBAND.htm#SECTION00579300000000000000
.. _Default properties: ://./scicos/DEADBAND.htm#SECTION00579400000000000000
.. _Library: ://./scicos/DEADBAND.htm#SECTION00579100000000000000
.. _Interfacing function: ://./scicos/DEADBAND.htm#SECTION00579500000000000000
.. _Description: ://./scicos/DEADBAND.htm#SECTION00579200000000000000
.. _Computational function (type 4): ://./scicos/DEADBAND.htm#SECTION00579600000000000000


