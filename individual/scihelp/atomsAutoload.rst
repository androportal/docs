


atomsAutoload
=============

Load the modules marked as "autoload"



Calling Sequence
~~~~~~~~~~~~~~~~


::

    modules = atomsAutoload()




Arguments
~~~~~~~~~

:modules 4xn character string matrix: *1st Col.* *Module's technical
  name* *2nd Col.* *Module's version* *3rd Col.* *Module's installed
  section* *4th Col.* *Module's installation path*
:



Description
~~~~~~~~~~~

`atomsAutoload` returns the list of modules registered to autoload



Examples
~~~~~~~~


::

    `atomsRepositoryAdd`_('http://scene1.test.atoms.scilab.org');
    `atomsInstall`_("toolbox_1");
    
    atomsAutoload()




See Also
~~~~~~~~


+ `atomsAutoloadAdd`_ Add one or several modules to autoload
+ `atomsAutoloadDel`_ Remove one or several modules from the autoload
  system


.. _atomsAutoloadAdd: atomsAutoloadAdd.html
.. _atomsAutoloadDel: atomsAutoloadDel.html


