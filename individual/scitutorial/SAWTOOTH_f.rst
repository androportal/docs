


SAWTOOTH_f
==========

Sawtooth generator



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Sawtooth generator`_
  +

    + `Palette`_
    + `Description`_
    + `Data types`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ Output:scalar double.




Description
~~~~~~~~~~~

This block is a sawtooth wave generator. The output of the block is
described by the equation:



At first event on its activation input, the output increases linearly
from 0 with a unitary rate. When the following event occurs, the
output goes to 0 and begin again to increase until the next event and
so on.

The resulting amplitude of the output is equal to the period of event
signal. If you want more control on the amplitude or a negative rate,
use the `Sigbuilder`_ or `Curve_f`_ blocks.



Data types
~~~~~~~~~~


+ Output: scalar double.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** sawtth




Example
~~~~~~~

This diagram shows the output of the SAWTOOTH_f block with an event
period of 2 seconds and an offset of 1 second on event generation.
`Open this example in Xcos`_





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/SAWTOOTH_f.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/sawtth.f (Type 0)




See also
~~~~~~~~


+ `GENSQR_f`_ Square wave generator
+ `GENSIN_f`_ Sine wave generator
+ `Sigbuilder`_ Signal creator/generator
+ `Curve_f`_ Signal creator/generator


.. _GENSQR_f: GENSQR_f.html
.. _Computational function: SAWTOOTH_f.html#Computationalfunction_SAWTOOTH_f
.. _Default properties: SAWTOOTH_f.html#Defaultproperties_SAWTOOTH_f
.. _Curve_f: Sigbuilder.html
.. _Description: SAWTOOTH_f.html#Description_SAWTOOTH_f
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/sawtooth_f_en_US.xcos
.. _SCI/modules/scicos_blocks/macros/Sources/SAWTOOTH_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/SAWTOOTH_f.sci
.. _Palette: SAWTOOTH_f.html#Palette_SAWTOOTH_f
.. _Data types: SAWTOOTH_f.html#Datatype_SAWTOOTH_f
.. _Interfacing function: SAWTOOTH_f.html#Interfacingfunction_SAWTOOTH_f
.. _Sawtooth generator: SAWTOOTH_f.html
.. _Example: SAWTOOTH_f.html#Example_SAWTOOTH_f
.. _See also: SAWTOOTH_f.html#Seealso_SAWTOOTH_f
.. _GENSIN_f: GENSIN_f.html


