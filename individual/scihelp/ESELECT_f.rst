


ESELECT_f
=========

Synchronous block Event-Select



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Synchronous block Event-Select`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

Special block similar to If-Then-Else. Input and output are
synchronized. The incoming event is directed to one of the output
event ports depending on the value of the regular input.

For example, when the input value is between 0 and 1, the control
input is redirected to the first command output; when the input value
is between 1 and 2, the control input is redirected to the second
command output; et cætera...



Dialog box
~~~~~~~~~~






+ **number of output event ports** A scalar. Number of output event
  ports. Properties : Type 'vec' of size 1
+ **Inherit** If no, then it inherits the event from event input port,
  elseif yes, then event is activated by regular input port. Properties
  : Type 'vec' of size 1
+ **zero-crossing** Select to enable zero crossing detection.
  Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type -1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 2
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** eselect




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/ESELECT_f.sci


.. _Event handling palette: Events_pal.html
.. _Interfacing function: ESELECT_f.html#Interfacingfunction_ESELECT_f
.. _Synchronous block Event-Select: ESELECT_f.html
.. _Description: ESELECT_f.html#Description_ESELECT_f
.. _Palette: ESELECT_f.html#Palette_ESELECT_f
.. _Dialog box: ESELECT_f.html#Dialogbox_ESELECT_f
.. _Default properties: ESELECT_f.html#Defaultproperties_ESELECT_f


