====
"EVTVARDLY"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Event variable delay
--------------------



Library
~~~~~~~
Events


Description
~~~~~~~~~~~
Similar to an event delay but the delay time is read on the regular
input port.



Dialog Box
~~~~~~~~~~
Set parameter of variable event delay Initial event firing time ( 0 if
absent) -1

+ Initial event firing time : time an intial activation is programmed
  on the output event port. If set to a value less than zero, no event
  is programmed.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 1 / 1
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *evtvardly*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/events/EVTVARDLY.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void evtvardly(scicos_block *block,int flag)
    { 
      if (flag==3){
        block->evout[0]=block->inptr[0][0];
      }
    }




Ramine Nikoukhah 2004-06-22

.. _Default properties: ://./scicos/EVTVARDLY.htm#SECTION005511400000000000000
.. _Dialog Box: ://./scicos/EVTVARDLY.htm#SECTION005511300000000000000
.. _Computational function (type 4): ://./scicos/EVTVARDLY.htm#SECTION005511600000000000000
.. _Description: ://./scicos/EVTVARDLY.htm#SECTION005511200000000000000
.. _Interfacing function: ://./scicos/EVTVARDLY.htm#SECTION005511500000000000000
.. _Library: ://./scicos/EVTVARDLY.htm#SECTION005511100000000000000


