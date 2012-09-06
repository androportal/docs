


atomsSaveConfig
===============

Make a backup of the configuration file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    atomsSaveConfig([force])




Arguments
~~~~~~~~~

:force `force` is a boolean. If set to %T (True), previously existing
  config.bak file in SCIHOME/.atoms will be erased. Default value is %F
  (False);
:



Examples
~~~~~~~~


::

    atomsSaveConfig(%T);
    `ls`_(atomsPath("system","user"));




See Also
~~~~~~~~


+ `atomsRestoreConfig`_ Restore the configuration from the backup file
+ `atomsSetConfig`_ Manage ATOMS system parameters
+ `atomsGetConfig`_ Get ATOMS system parameters




History
~~~~~~~
Version Description 5.4.0 Function added
.. _atomsGetConfig: atomsGetConfig.html
.. _atomsRestoreConfig: atomsRestoreConfig.html
.. _atomsSetConfig: atomsSetConfig.html


