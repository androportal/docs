


loadXcosLibs
============

Load most of the Xcos macros



Calling Sequence
~~~~~~~~~~~~~~~~


::

    loadXcosLibs()




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

Import some useful Xcos macros into Scilab.

This function has been introduced in Scilab 5.3.1 to replace
loadScicosLibs.



::

    `exists`_("SUM_f")
    loadXcosLibs();
    `exists`_("SUM_f")
    `typeof`_(SUM_f)





See Also
~~~~~~~~


+ `

::

    `xcos`_

  - Hybrid dynamic systems modeler and simulator.
+ `

::

    `loadScicos`_

  - Load the simulation native libraries.


.. _xcos: xcos.html


