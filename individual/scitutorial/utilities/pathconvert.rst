====
"pathconvert"
====

Scilab Function Last update : April 1993
**pathconvert** - pathnames convertion between posix and windows.



Calling Sequence
~~~~~~~~~~~~~~~~

paths=pathconvert(paths [,flagtrail [,flagexpand [,type]]])




Parameters
~~~~~~~~~~


+ **paths** : a string matrix giving a set of pathnames
+ **flagtrail,flagexpand** : boolean optional parameters (default
  value depends on the MSDOS variable).
+ **type** : a string **'u'** or **'w'** .




Description
~~~~~~~~~~~

**pathconvert** can be used to convert a set of pathnames (given by a
string matrix **paths** ) from windows native filename to posix-style
pathnames and back. The target style is given by the optional string
**type** which can be **'u'** for Unix or **'w'** for Windows. The
default style is set according to the value of **MSDOS** . If
**MSDOS** is true (resp. false ) then default type is **'w'** (resp.
**'u'** ).

Windows pathnames starting with **name:** are converted to pathnames
starting with **/cygdrive/name/** using the cygwin convention.

**flagtrail** is an optional boolean parameter. When its value is true
a trailing separator ( **'\'** or **'/'** ) is added at the end of the
path.

**flagexpand** is an optional boolean parameter. When its value is
true leading strings like **HOME** , **SCI** or **~** are expanded
using environment variables.



Examples
~~~~~~~~


::

    
    
    pathconvert('SCI/macros\util/foo.sci',%f,%f,'u')
    pathconvert('SCI/macros\util/foo.sci',%f,%f,'w')
    pathconvert('SCI/macros/util/foo.sci',%f,%t,'w')
    pathconvert('HOME/macros/util/foo.sci',%t,%t,'w')
    pathconvert('c:/tmp',%f,%t,'u')
    pathconvert('/cygdrive/c/tmp',%f,%f,'w')
     
      




See Also
~~~~~~~~

` **basename** `_,` **listfiles** `_,

.. _
      : ://./utilities/basename.htm
.. _
      : ://./utilities/listfiles.htm


