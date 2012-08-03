====
"RAMP"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Ramp
----



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
The Ramp block generates a signal that starts at a specified time and
value and changes by a specified rate. The block's **Slope , Start
time** and **Initial output** parameters determine the characteristics
of the output signal. All must have the consistent dimensions after
scalar expansion.


Dialog Box
~~~~~~~~~~
Set ramp parameters Slope 0 Start time 0 Initial output 0

+ Slope: The rate of change of the generated signal.
+ Start time:The time at which the signal begins to be generated.
+ Initial output:The initial value of the signal.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: yes
+ mode: yes
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *ramp*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/RAMP.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void ramp(scicos_block *block,int flag)
    {double dt;
      if (flag==1){
        dt=get_scicos_time()-block->rpar[1];
        if (get_phase_simulation()==1) {
          if(dt>0) {
    	block->outptr[0][0]=block->rpar[2]+block->rpar[0]*dt;
          }else{
    	block->outptr[0][0]=block->rpar[2];
          }
        }else{
          if(block->mode[0]==1) {
    	block->outptr[0][0]=block->rpar[2]+block->rpar[0]*dt;
          }else {
    	block->outptr[0][0]=block->rpar[2];
          }
        }
      } else if (flag==9){
        block->g[0]=get_scicos_time()-(block->rpar[1]);
        if (get_phase_simulation()==1) {
          if (block->g[0]>=0){
    	block->mode[0]=1;
          }else{
    	block->mode[0]=2;
          }
        }
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Library: ://./scicos/RAMP.htm#SECTION00513100000000000000
.. _Interfacing function: ://./scicos/RAMP.htm#SECTION00513500000000000000
.. _Default properties: ://./scicos/RAMP.htm#SECTION00513400000000000000
.. _Dialog Box: ://./scicos/RAMP.htm#SECTION00513300000000000000
.. _Description: ://./scicos/RAMP.htm#SECTION00513200000000000000
.. _Computational function (type 4): ://./scicos/RAMP.htm#SECTION00513600000000000000


