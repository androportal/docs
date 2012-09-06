


fgetl (Matlab function)
=======================

Read line(s) from file, discard newline character



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    fgetl



::

    `mgetl`_




Particular cases
~~~~~~~~~~~~~~~~

Matlab **fgetl** reads file line per line while Scilab **mgetl**
allows to read the whole file.

Matlab **fgetl** returns **-1** if it could not read a line in file
but Scilab **mgetl** returns an empty string is this case. You can
used **meof** to check if End Of File has been reached.



