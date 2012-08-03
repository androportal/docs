====
"freq_div"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Compiled Super Block content`_







Frequency division
------------------



Library
~~~~~~~
Events


Description
~~~~~~~~~~~
One out of every n incoming events gets though. So if the input is
connected to an event clock, the output behaves as an event clock but
with frequency divided by n.



Dialog Box
~~~~~~~~~~
Set frequency division block parameters Phase (0 to division factor
-1) 0 Division factor 3

+ Phase : staring value of the counter
+ Division factor: the count is done modulo this value




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 1 / 1
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *csuper*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/events/freq_div.sci


Compiled Super Block content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~



Ramine Nikoukhah 2004-06-22

.. _Description: ://./scicos/freq_div.htm#SECTION00553200000000000000
.. _Compiled Super Block content: ://./scicos/freq_div.htm#SECTION00553600000000000000
.. _Library: ://./scicos/freq_div.htm#SECTION00553100000000000000
.. _Interfacing function: ://./scicos/freq_div.htm#SECTION00553500000000000000
.. _Default properties: ://./scicos/freq_div.htm#SECTION00553400000000000000
.. _Dialog Box: ://./scicos/freq_div.htm#SECTION00553300000000000000


