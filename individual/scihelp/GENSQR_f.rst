


GENSQR_f
========

Square wave generator



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Square wave generator`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

This block is a square wave generator: output takes values *-M* and
*+M*. Every time an event is received on the input event port, the
output switches from *-M* to *M*, or *M* to *-M*.



Typically the event input port is used to specify the signal period.



Dialog box
~~~~~~~~~~






+ **Amplitude** a scalar *M*. Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** gensqr




Example
~~~~~~~

This is a typical use of this block in context. This example should
also alert the user about a specific behavior when linked to the same
event its sink. `Open this exemple into Xcos`_

` `_

First the sink block is a `scope`_ with a sample rate set to *1
second*. This parameter will affect the printed results of all the
diagram branches.

The first source block (green) illustrate the typical use of this
block. The period of each output level is set with a `clock`_. The
signal edge is fast and should be accurate for most of the application
with a edge speed ratio of *1/10*.

The second source block (blue) illustrate a much more problematic use
case. The signal edge is not as fast as the previous one and can lead
problematic use case. Users can use these parameters to illustrate
some limitations of a design.

The third source block (yellow) illustrate a mis-use and a common
first user error. The block activation times are the same as the
`scope`_. The scope compute only one positve or negative *M* point at
a and draw a line from (positive) to (negative).



Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/GENSQR_f.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/gensqr.f (Type 0)


.. _Square wave generator: GENSQR_f.html
.. _Description: GENSQR_f.html#Description_GENSQR_f
.. _Palette: GENSQR_f.html#Palette_GENSQR_f
.. _Dialog box: GENSQR_f.html#Dialogbox_GENSQR_f
.. _Computational function: GENSQR_f.html#Computationalfunction_GENSQR_f
.. _Example: GENSQR_f.html#Example_GENSQR_f
.. _scope: CMSCOPE.html
.. _Sources palette: Sources_pal.html
.. _Open this exemple into Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/GENSQR_f_diagram_en_US.xcos
.. _Default properties: GENSQR_f.html#Defaultproperties_GENSQR_f
.. _clock: CLOCK_c.html
.. _SCI/modules/scicos_blocks/macros/Sources/GENSQR_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/GENSQR_f.sci
.. _Interfacing function: GENSQR_f.html#Interfacingfunction_GENSQR_f


