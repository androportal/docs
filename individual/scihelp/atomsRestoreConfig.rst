


atomsRestoreConfig
==================

Restore the configuration from the backup file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    atomsRestoreConfig()




Description
~~~~~~~~~~~

`atomsRestoreConfig` checks that a config.bak file exists, and set it
as the main confiuration file. The backup file is deleted in the
process.



Examples
~~~~~~~~


::

    atomsSaveConfig(%T);
    `deletefile`_(atomsPath("system","user")+"config");
    atomsRestoreConfig();




See Also
~~~~~~~~


+ `atomsSaveConfig`_ Make a backup of the configuration file
+ `atomsSetConfig`_ Manage ATOMS system parameters
+ `atomsGetConfig`_ Get ATOMS system parameters




History
~~~~~~~
Version Description 5.4.0 Function added
.. _atomsGetConfig: atomsGetConfig.html
.. _atomsSaveConfig: atomsSaveConfig.html
.. _atomsSetConfig: atomsSetConfig.html


