


atomsGetInstalled
=================

Get the list of installed external modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    installed = atomsGetInstalled(section)




Arguments
~~~~~~~~~

:installed 5xn String matrix :

    + `1st column` : External module's technical name
    + `2nd column` : External module's version
    + `3rd column` : allusers/user, this parameter tell if the external
      module has been installed for all users or only for the current user.
    + `4th column` : External module's installation path
    + `5th column` : I/A, this parameter tell if the external module has
      been automatically or intentionnaly installed.

: :section This argument filter the output list. `section` is a
single-string and its value should be :

    + `"all"`: atomsGetInstalled() lists external modules installed in
      both "user" and "allusers" sections.
    + `"allusers"`: atomsGetInstalled() only lists external modules
      installed in the "allusers" section.
    + `"user"`: atomsGetInstalled() only lists external modules installed
      in the "user" section.
The default value is "all".
:



Description
~~~~~~~~~~~

`atomsGetInstalled` returns the list of installed external modules



Examples
~~~~~~~~


::

    `atomsSetConfig`_("Verbose","True");
    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    `atomsInstall`_("toolbox_5");
    atomsGetInstalled();
    `atomsRemove`_("toolbox_5");




See Also
~~~~~~~~


+ `atomsInstall`_ Install one or several external modules
+ `atomsIsInstalled`_ Determines whether the module is installed.
  Returns true if the module is installed, false otherwise.


.. _atomsIsInstalled: atomsIsInstalled.html
.. _atomsInstall: atomsInstall.html


