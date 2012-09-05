


atomsGetLoaded
==============

Get the list of loaded external modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    loaded = atomsGetLoaded()




Arguments
~~~~~~~~~

:loaded mx5 String matrix :

    + `1st column` : External module's technical name
    + `2nd column` : External module's version
    + `3rd column` : allusers/user, this parameter tell if the external
      module has been installed for all users or only for the current user.
    + `4th column` : External module's installation path
    + `5th column` : I/A, this parameter tell if the external module has
      been automatically or intentionnaly installed.

:



Description
~~~~~~~~~~~

`atomsGetLoaded` returns the list of loaded external modules



Examples
~~~~~~~~


::

    `atomsSetConfig`_("Verbose","True");
    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    `atomsInstall`_("toolbox_5");
    `atomsLoad`_("toolbox_5");
    
    atomsGetLoaded("toolbox_5");
    
    `atomsRemove`_("toolbox_5");




See Also
~~~~~~~~


+ `atomsLoad`_ Load one or several external modules
+ `atomsIsLoaded`_ determines whether a module is loaded or not


.. _atomsIsLoaded: atomsIsLoaded.html
.. _atomsLoad: atomsLoad.html


