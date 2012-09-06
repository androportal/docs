


Getting started
===============



Introduction
~~~~~~~~~~~~

This page teaches how to get started with ATOMS module manager on the
scilab platform towards a session example. It describes how one can
install a module and load it in Scilab environment.



Atoms
~~~~~



+ *Configure ATOMS to display extra-information*

::

    -->`atomsSetConfig`_('Verbose','True');


+ *List available modules*

::

    -->`atomsList`_();
    
          ampl_toolbox - An interface to `load`_ .nl files created by AMPL
           ANN_Toolbox - ANN Toolbox
                conmin - A Scilab interface to the conmin optimization method
                 CUTEr - Testing environment for optimization `and`_ linear algebra solvers
           dace_scilab - This is a conversion of the well known DACE kriging toolbox for Matlab.
           dde_toolbox - Dynamic Data Exchange client for Scilab
            HYDROGRv50 - Models `and`_ function for operational hydrology
               lolimot - A fast neural network - LOcal LInear MOdel Tree
          module_lycee - Scilab pour les lycées
                  NISP - Non Intrusive Spectral Projection
               plotlib - "Matlab-like" Plotting library for Scilab
              scilab2c - Translate Scilab code into C code
                scipad - Scipad 7.20
               simplex - This package contains the simplex optimization method
       sndfile_toolbox - Read & `write`_ sound files
               stixbox - Statistics toolbox for Scilab 5.2


+ *Install a module* Installing a module download and extract it.

::

    -->`atomsInstall`_('NISP');
    
        NISP (2.1) will be installed in the 'allusers' section
        Installing NISP (2.1) ... success


+ *Load a module* The module is installed but it's not loaded in the
  scilab environment and its functionnalities are not available yet. By
  default, a module is added to the list of modules to load at Scilab
  start when it's installed. *(>> More information on the autoload
  system :

    + `atomsAutoloadList`_
    + `atomsAutoloadAdd`_
    + `atomsAutoloadDel`_
  ).*

::

    -->`atomsLoad`_('NISP');
          
        Start NISP Toolbox
          Load gateways
          Load `help`_
          Load demos


+ *Remove a module:*

::

    -->`atomsRemove`_ NISP
      
        NISP (2.1) will be removed from the 'allusers' section
        the package NISP (2.1) is currently loaded, It will removed at next Scilab restart





.. _atomsAutoloadAdd: atomsAutoloadAdd.html
.. _atomsAutoloadList: atomsAutoloadList.html
.. _atomsAutoloadDel: atomsAutoloadDel.html


