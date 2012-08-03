====
"CBLOCK"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_







New C
-----



Library
~~~~~~~
Others


Description
~~~~~~~~~~~
This block can be used to write on-line a C interfacing function of
type 4.



Dialog Box
~~~~~~~~~~
Set C-Block2 block parameters simulation function toto is block
implicit? (y,n) n input ports sizes 1 output ports sizes 1 input event
ports sizes [] output events ports sizes [] initial continuous state
[] number of zero crossing surfaces 0 initial discrete state [] Real
parameters vector [] Integer parameters vector [] initial firing
vector ( 0 for no firing) [] direct feedthrough (y or n) y time
dependence (y or n) n

+ simulation function: the name of the simulation function, either a
  Scilab function or, a C or fortran routine already linked with Scilab
+ is block implicit? : for most cases the answer is no
+ input ports sizes: the number and sizes of ports, for example 1,3
  means two inputs: the first has size 1 and the other 3.
+ output ports sizes: same for outputs
+ input event ports sizes: same but sizes can only be one
+ output events ports sizes: same
+ initial continuous state: this must be a column vector
+ number of zero crossing surfaces: zero if none
+ initial discrete state: column vector
+ Real parameters vector: column vector
+ Integer parameters vector: column vector
+ initial firing vector : column vector the size of which must
  correspond to the number of output event ports
+ direct feedthrough : is the output of the block directly affected by
  the input (and not through a delay or integrator)
+ time dependence : is the block always active




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *toto*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/CBLOCK.sci


Ramine Nikoukhah 2004-06-22

.. _Default properties: ://./scicos/CBLOCK.htm#SECTION00576400000000000000
.. _Library: ://./scicos/CBLOCK.htm#SECTION00576100000000000000
.. _Interfacing function: ://./scicos/CBLOCK.htm#SECTION00576500000000000000
.. _Description: ://./scicos/CBLOCK.htm#SECTION00576200000000000000
.. _Dialog Box: ://./scicos/CBLOCK.htm#SECTION00576300000000000000


