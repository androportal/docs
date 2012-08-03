====
"EXTRACTOR"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Extractor
---------



Library
~~~~~~~
Branching


Description
~~~~~~~~~~~
It extracts values from an input vector. For example if the input is
of size 4 and we qre interested only in the 3rd and first components
(in that order), block parameter should be set to 3 1.



Dialog Box
~~~~~~~~~~
Set block parameters indices to extract 1

+ indices to extract: vector indicating the components to be
  extracted.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *extractor*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/EXTRACTOR.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void extractor(scicos_block *block,int flag)
    {
      int i,j;
      if(flag==1){
        for(i=0;i<block->nipar;++i){
          j=block->ipar[i]-1;
          if(j<0) j=0;
          if(j>=block->insz[0]) j=block->insz[0]-1;
          block->outptr[0][i]=block->inptr[0][j];
        }
      }
    }




Ramine Nikoukhah 2004-06-22

.. _Default properties: ://./scicos/EXTRACTOR.htm#SECTION00534400000000000000
.. _Library: ://./scicos/EXTRACTOR.htm#SECTION00534100000000000000
.. _Interfacing function: ://./scicos/EXTRACTOR.htm#SECTION00534500000000000000
.. _Description: ://./scicos/EXTRACTOR.htm#SECTION00534200000000000000
.. _Computational function (type 4): ://./scicos/EXTRACTOR.htm#SECTION00534600000000000000
.. _Dialog Box: ://./scicos/EXTRACTOR.htm#SECTION00534300000000000000


