====
"Modulo_Count"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Modulo counter
--------------



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
A modulo counter. The counting is done everytime the block is
activated.



Dialog Box
~~~~~~~~~~
Set Modulo_Count block parameters initial state ( =0) 0 Modulo what
number ( 0) 3

+ initial state : state of the counter originally
+ Modulo what number : counter goes up to this number minus 1 and
  returns to zero.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *modulo_count*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/Modulo_Count.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void 
    modulo_count(scicos_block *block,int flag)
    {
      if(flag == 1) {
        *block->outptr[0]=block->z[0];
      }else if (flag == 2){
        block->z[0]=(1+(int)block->z[0])%(block->ipar[0]);
       }
    }




Ramine Nikoukhah 2004-06-22

.. _Library: ://./scicos/Modulo_Count.htm#SECTION005117100000000000000
.. _Interfacing function: ://./scicos/Modulo_Count.htm#SECTION005117500000000000000
.. _Default properties: ://./scicos/Modulo_Count.htm#SECTION005117400000000000000
.. _Dialog Box: ://./scicos/Modulo_Count.htm#SECTION005117300000000000000
.. _Description: ://./scicos/Modulo_Count.htm#SECTION005117200000000000000
.. _Computational function (type 4): ://./scicos/Modulo_Count.htm#SECTION005117600000000000000


