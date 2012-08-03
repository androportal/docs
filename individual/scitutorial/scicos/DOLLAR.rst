====
"DOLLAR"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Register
--------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
A discrete delay block. When activated, internal state is copied on
the output and the input is copied into the internal state.



Dialog Box
~~~~~~~~~~
Set dollar block parameters initial condition 0

+ initial condition: Initial state of the discrete-time state




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
+ name of computational function: *dollar*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/DOLLAR.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

      
    #include "scicos_block.h"
    
    void dollar4(scicos_block *block,int flag)
    {
      /* c     Copyright INRIA
         
      Scicos block simulator
      Ouputs delayed input */
      
      int i;
      for(i=0;i< block->insz[0];i++){
        if (flag ==1 || flag ==6 || flag ==4)
          block->outptr[0][i]=block->z[i];
        else if (flag == 2)
          block->z[i]=block->inptr[0][i];
      }
    }




Ramine Nikoukhah 2004-06-22

.. _Interfacing function: ://./scicos/DOLLAR.htm#SECTION00583500000000000000
.. _Library: ://./scicos/DOLLAR.htm#SECTION00583100000000000000
.. _Computational function (type 4): ://./scicos/DOLLAR.htm#SECTION00583600000000000000
.. _Description: ://./scicos/DOLLAR.htm#SECTION00583200000000000000
.. _Dialog Box: ://./scicos/DOLLAR.htm#SECTION00583300000000000000
.. _Default properties: ://./scicos/DOLLAR.htm#SECTION00583400000000000000


