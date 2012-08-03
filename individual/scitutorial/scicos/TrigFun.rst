====
"TrigFun"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Trigonometric function
----------------------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
The Trigonometric Function block performs numerous common
trigonometric functions. You can select one of these functions from
the Function list: sin, cos, tan, asin, acos, atan, atan2, sinh, cosh,
and tanh. The block output is the result of the operation of the
function on the input or inputs.


Dialog Box
~~~~~~~~~~
Choose among sin, cos, tan, asin Function sin

+ Function: The trigonometric function.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *sin_blk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/TrigFun.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void sin_blk(scicos_block *block,int flag)
    {
      int j;
      if(flag==1){
        for (j=0;j<block->insz[0];j++) {
          block->outptr[0][j]=sin(block->inptr[0][j]);
        }
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/TrigFun.htm#SECTION00542300000000000000
.. _Default properties: ://./scicos/TrigFun.htm#SECTION00542400000000000000
.. _Interfacing function: ://./scicos/TrigFun.htm#SECTION00542500000000000000
.. _Library: ://./scicos/TrigFun.htm#SECTION00542100000000000000
.. _Computational function (type 4): ://./scicos/TrigFun.htm#SECTION00542600000000000000
.. _Description: ://./scicos/TrigFun.htm#SECTION00542200000000000000


