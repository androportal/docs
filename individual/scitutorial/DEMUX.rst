


DEMUX
=====

Demultiplexer



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Demultiplexer`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Signal routing palette`_




Description
~~~~~~~~~~~

Given a vector valued input this block splits inputs over vector
valued outputs. So , where are numbered from top to bottom. Input and
Output port sizes are determined by the context.



Dialog box
~~~~~~~~~~






+ **number of output ports or vector of sizes** positive integer less
  than or equal to . Properties : Type 'vec' of size -1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [0,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1** **- port 2
  : size [-2,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** multiplex




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/DEMUX.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/multiplex.c (Type 4)


.. _Palette: DEMUX.html#Palette_DEMUX
.. _Signal routing palette: Signalrouting_pal.html
.. _Dialog box: DEMUX.html#Dialogbox_DEMUX
.. _Demultiplexer: DEMUX.html
.. _Default properties: DEMUX.html#Defaultproperties_DEMUX
.. _Description: DEMUX.html#Description_DEMUX
.. _Interfacing function: DEMUX.html#Interfacingfunction_DEMUX
.. _Computational function: DEMUX.html#Computationalfunction_DEMUX


