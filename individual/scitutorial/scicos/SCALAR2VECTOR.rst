====
"SCALAR2VECTOR"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Scalar to vector
----------------



Library
~~~~~~~
Branching


Description
~~~~~~~~~~~
A scalar input is replicated to form a vector output of desired size.
The output size need not be specified.



Dialog Box
~~~~~~~~~~
Set block parameters size of output (-1: if don't know) -1

+ size of output : integer giving the size of output where each entry
  is equal to the input




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *scalar2vector*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/SCALAR2VECTOR.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    void scalar2vector(scicos_block *block,int flag)
    {
      int i;
      if(flag==1){
        for(i=0;i<block->outsz[0];++i){
          block->outptr[0][i]=block->inptr[0][0];
        }
      }
    }




Ramine Nikoukhah 2004-06-22

.. _Dialog Box: ://./scicos/SCALAR2VECTOR.htm#SECTION005312300000000000000
.. _Computational function (type 4): ://./scicos/SCALAR2VECTOR.htm#SECTION005312600000000000000
.. _Description: ://./scicos/SCALAR2VECTOR.htm#SECTION005312200000000000000
.. _Interfacing function: ://./scicos/SCALAR2VECTOR.htm#SECTION005312500000000000000
.. _Library: ://./scicos/SCALAR2VECTOR.htm#SECTION005312100000000000000
.. _Default properties: ://./scicos/SCALAR2VECTOR.htm#SECTION005312400000000000000


