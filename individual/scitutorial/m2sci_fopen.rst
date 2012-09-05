


fopen (Matlab function)
=======================

Open a file or obtain information about open files



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    fopen



::

    `mopen`_




Particular cases
~~~~~~~~~~~~~~~~

:Access permission: Matlab offers two permissions options not
  supported by Scilab: **W** and **A** (for tape drives)
: :Input values: In Matlab, **fopen('all')** lists all opened files,
  in Scilab, this type of call for **fopen** does not exist. You can
  also use **fopen** in Matlab to get information on a file identifier (
  **fopen(fid)**), this case is not implemented in Scilab.
: :Machine format: Note that Scilab does not support machine format
  values as input or output.
:

Matlab **fopen** can return an error message but not Scilab **mopen**,
moreover, returned file identifier is **-1** in case of error in
Matlab but does not exist in this case in Scilab, so an emulation
function has been written **mtlb_fopen**.



