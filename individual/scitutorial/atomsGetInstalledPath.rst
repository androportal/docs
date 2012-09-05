


atomsGetInstalledPath
=====================

Get the install path of installed external modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    paths = atomsGetInstalledPath(modules)




Arguments
~~~~~~~~~

:modules mx2, mx3 Matrix of strings: *1st Col.* *Technical name*
  Mandatory *2nd Col.* *Version* Mandatory *3nd Col.* *Section* Optional
  If this field is empty or is not present, the "all" section is used.
: :paths the paths of the given modules:



Description
~~~~~~~~~~~

`atomsGetInstalledPath` returns the installation path of given
external modules



Examples
~~~~~~~~


::

    `atomsSetConfig`_("Verbose","True");
    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    `atomsInstall`_(["toolbox_5","1.0"]);
    atomsGetInstalledPath(["toolbox_5","1.0"]);
    `atomsRemove`_("toolbox_5");




See Also
~~~~~~~~


+ `atomsInstall`_ Install one or several external modules
+ `atomsIsInstalled`_ Determines whether the module is installed.
  Returns true if the module is installed, false otherwise.


.. _atomsIsInstalled: atomsIsInstalled.html
.. _atomsInstall: atomsInstall.html


