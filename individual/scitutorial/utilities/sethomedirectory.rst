====
"sethomedirectory"
====

Scilab Function Last update : 02/04/2005
**sethomedirectory** - Set Scilab home directory



Calling Sequence
~~~~~~~~~~~~~~~~

[home,scilabhome]=sethomedirectory()
[home,scilabhome]=sethomedirectory(homepath)




Parameters
~~~~~~~~~~


+ **home** : a string



+ **scilabhome** : a string (value of SCIHOME environment variable)



+ **homepath** : home path (a string)




Description
~~~~~~~~~~~

Set Scilab home path : "SCIHOME" variable.

On Windows, C:/Documents and Settings/<User>/Scilab/<Scilab-Version>

On Unix, /home/<User>/Scilab/<Scilab-Version>



Author
~~~~~~

Allan CORNET



