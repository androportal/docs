


atomsGetConfig
==============

Get ATOMS system parameters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = atomsGetConfig(parameter)




Arguments
~~~~~~~~~

:parameter single-string matrix
: :result Value of the parameter
:



Proxy
~~~~~

Parameter Description Values useProxy Use/Don't use proxies
*True*/False proxyHost the hostname (IP or DNS name) proxyPort the
port proxyUser Specify the username for authentication on a proxy
server proxyPassword Specify the password for authentication on a
proxy server



Network
~~~~~~~

Parameter Description Values offline If set to "True", the system only
works with local repositories. The offline mode permits the user to
install modules from a local repository or a local package (hard disk,
USB keys, ...) even if the network is unreachable. In version prior to
5.4.0, this tag was called offLine. True/ *False*



Autoload System
~~~~~~~~~~~~~~~

Parameter Description Values autoload Enable/Disable autoload system
*True*/False autoloadAddAfterInstall Automatically add a module to the
list of module to autoload at Scilab start *True*/False



Miscellenous
~~~~~~~~~~~~

Parameter Description Values verbose Display or not extra-information
True/ *False* downloadTool Get tool used for download "curl", "wget"
or "httpdownload" (Windows only) downloadTimeout Get timeout used for
download "5" is the default value



Description
~~~~~~~~~~~

`atomsGetConfig` returns the value of the parameter given



See Also
~~~~~~~~


+ `atomsSetConfig`_ Manage ATOMS system parameters




Examples
~~~~~~~~


::

    // Get value of verbose parameter
          atomsGetConfig('Verbose')




History
~~~~~~~
Version Description 5.4.0 offLine parameter renamed to offline
.. _atomsSetConfig: atomsSetConfig.html


