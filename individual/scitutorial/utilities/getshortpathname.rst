====
"getshortpathname"
====

Scilab Function Last update : 04/02/2005
**getshortpathname** - get short path name (Only for Windows)



Calling Sequence
~~~~~~~~~~~~~~~~

shortpath=getshortgpathname(longpath)
[shortpath,bOK]=getshortpathname(longpath)




Parameters
~~~~~~~~~~


+ **longpath** : A character string the long path
+ **shortpath** : A character string the short path
+ **bOK** : A boolean %T if path has been converted else %F




Description
~~~~~~~~~~~

The getshortpathname primitive converts the specified path to its
short form.



Examples
~~~~~~~~


::

    [shortpath,bOK]=getshortpathname(SCI) 
     




See Also
~~~~~~~~

` **getlongpathname** `_,



Author
~~~~~~

Allan CORNET

.. _
      : ://./utilities/getlongpathname.htm


