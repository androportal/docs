


getio
=====

get Scilab input/output logical units



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ios=getio()




Arguments
~~~~~~~~~

:ios a vector [rio rte wio wte]
    :rio current logical unit for reading instructions
    : :rte logical unit assigned for input in main scilab window
    : :wio logical unit relative to the diary file if any. wio=0 stands
      for no diary file opened
    : :wte logical unit assigned for output in main scilab window
    :

:



Description
~~~~~~~~~~~

`getio` returns logical units assigned for main scilab input and
output



See Also
~~~~~~~~


+ `file`_ file management
+ `exec`_ script file execution


.. _exec: exec.html
.. _file: file.html


