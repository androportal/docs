====
"chdir"
====

Scilab Function Last update : 19/12/2005
**chdir** - changes Scilab current directory

**cd** - changes Scilab current directory



Calling Sequence
~~~~~~~~~~~~~~~~

chdir(path)
realpath=cd(path)
cd path




Parameters
~~~~~~~~~~


+ **path** : a character string
+ **realpath** : a character string, the real path name after pathname
  conversion (see below)




Description
~~~~~~~~~~~
Change the current Scilab directory to those given by **path** . Note
that path conversion is performed and for example **SCI/macros/util**
is a valid pattern for both unix and windows. If path is empty change
to "home" directory.


Examples
~~~~~~~~


::

    
    
    chdir(TMPDIR);
    pwd
    cd 
    cd SCI
     
      




See Also
~~~~~~~~

` **getcwd** `_,

.. _
      : ://./utilities/../programming/pwd.htm


