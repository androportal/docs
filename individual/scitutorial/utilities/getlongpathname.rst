====
"getlongpathname"
====

Scilab Function Last update : 04/02/2005
**getlongpathname** - get long path name (Only for Windows)



Calling Sequence
~~~~~~~~~~~~~~~~

longpath=getlongpathname(shortpath)
[longpath,bOK]=getlongpathname(shortpath)




Parameters
~~~~~~~~~~


+ **shortpath** : A character string the short path
+ **longpath** : A character string the long path
+ **bOK** : A boolean %T if path has been converted else %F




Description
~~~~~~~~~~~

The getlongpathname primitive converts the specified path to its long
form. It no long path is found, this primitive returns the specified
name.



Examples
~~~~~~~~


::

    [longpath,bOK]=getlongpathname(SCI) 
     




See Also
~~~~~~~~

` **getshortpathname** `_,



Author
~~~~~~

Allan CORNET

.. _
      : ://./utilities/getshortpathname.htm


