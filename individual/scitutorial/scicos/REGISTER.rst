====
"REGISTER"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Shift register
--------------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block realizes a shift register. At every input event, the
register is shifted one step.


Dialog Box
~~~~~~~~~~
Set delay parameters Register initial condition 0;0;0;0;0;0;0;0;0;0

+ Register initial condition: A column vector. It contains the initial
  state of the register.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *delay4*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/REGISTER.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

       
    #include "scicos_block.h"
    
    void delay4(scicos_block *block,int flag)
    {
      /* Copyright INRIA
       
         Scicos block simulator
         Ouputs nx*dt delayed input */
    
      double* y=block->outptr[0];
      double* z=block->z;
      int nz=block->nz;
      double* u=block->inptr[0];
      
      int i;
      
      if (flag ==1 || flag ==4 || flag ==6){
        y[0]=z[0];
      }else if (flag == 2){
        /*  shift buffer */
        for (i=0; i<=nz-2; i++){
          z[i]=z[i+1];
        }
        /* add new point to the buffer */
        z[nz-1]=u[0];
      }
    }




Ramine Nikoukhah 2004-06-22
.. _Computational function (type 4): ://./scicos/REGISTER.htm#SECTION00586600000000000000
.. _Description: ://./scicos/REGISTER.htm#SECTION00586200000000000000
.. _Interfacing function: ://./scicos/REGISTER.htm#SECTION00586500000000000000
.. _Dialog Box: ://./scicos/REGISTER.htm#SECTION00586300000000000000
.. _Default properties: ://./scicos/REGISTER.htm#SECTION00586400000000000000
.. _Library: ://./scicos/REGISTER.htm#SECTION00586100000000000000


