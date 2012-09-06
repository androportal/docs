


SampleCLK
=========

Sample Time Clock



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Sample Time Clock`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

The difference between the SampleCLK and the CLOCK_c is that all the
SampleCLK blocks in our diagram are synchronous. The synchronism is
done due to two different methods of computation in the compilation
phase.

The first method consists of computing a clock that is faster than all
the SampleCLK connected to a counter which activate the event select
block.

The clock is calculated due to the following rule.

If all the blocks have the same offset then the frequency of the clock
is the gcd of the sample time, and the offset of the clock is equal to
the offset.

If the offsets are different, then the frequency of the clock is the
gcd of the sample time and the offset, and the offset of the clock is
equal to 0.

The Counter counts from one to the least common multiple of the sample
time (lcm).

The number of outputs of the ESELECT_f block is equal to the lcm.

The second method uses the Multifrequency block it generates events
only for specific time. Events in this method are not periodically
generated as in the first one.





Dialog box
~~~~~~~~~~






+ **Sample time** The Sample time value. Properties : Type 'vec' of
  size 1.
+ **Offset** The offset value. Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 1
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** sampleclk




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sources/SampleCLK.sci




See also
~~~~~~~~


+ `CLOCK_c - Activation clock`_
+ `Counter - Counter`_
+ `ESELECT_f - Synchronous block Event-Select`_
+ `M_freq - Multiple Frequencies`_


.. _Dialog box: SampleCLK.html#Dialogbox_SampleCLK
.. _Interfacing function: SampleCLK.html#Interfacingfunction_SampleCLK
.. _Description: SampleCLK.html#Description_SampleCLK
.. _Sources palette: Sources_pal.html
.. _ESELECT_f - Synchronous block Event-Select: ESELECT_f.html
.. _See also: SampleCLK.html#Seealso_SampleCLK
.. _M_freq - Multiple Frequencies: M_freq.html
.. _Counter - Counter: Counter.html
.. _Palette: SampleCLK.html#Palette_SampleCLK
.. _Sample Time Clock: SampleCLK.html
.. _CLOCK_c - Activation clock: CLOCK_c.html
.. _Default properties: SampleCLK.html#Defaultproperties_SampleCLK


