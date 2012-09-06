


atomsSetConfig
==============

Manage ATOMS system parameters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = atomsSetConfig(parameter, value)




Arguments
~~~~~~~~~

:parameter single-string matrix
: :value single-string matrix
: :result Number of changed parameters
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

Parameter Description Values Verbose Display or not extra-information
True/ *False* downloadTool Set tool used to download "curl", "wget" or
"httpdownload" (Windows only) downloadTimeout Set timeout for download
"5" by default



Description
~~~~~~~~~~~

`atomsSetConfig` returns the list of modules registered to autoload



Examples
~~~~~~~~


::

    // Display extra-information
          atomsSetConfig('Verbose','True')
          
          // Disable autoload system
          atomsSetConfig('autoload','False')




See Also
~~~~~~~~


+ `atomsGetConfig`_ Get ATOMS system parameters




History
~~~~~~~
Version Description 5.4.0 offLine parameter renamed to offline
.. _atomsGetConfig: atomsGetConfig.html


