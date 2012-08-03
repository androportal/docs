====
"xmltl"
====

Scilab Function Last update : 13/01/2005
**xmltohtml** - converts xml Scilab help files to html



Calling Sequence
~~~~~~~~~~~~~~~~

xmltohtml(dirs [,titles [,xsl [,step]]])




Parameters
~~~~~~~~~~


+ **dirs** : vector of strings: a set of directory paths for which
  html manuals are to be generated or **[] **
+ **titles** : vector of strings: titles associated to directory paths
  or []
+ **xsl** : string, name of xsl file used for translation
+ **step** : string, should be "whatis", "index", "html","contents",
  or "all"




Description
~~~~~~~~~~~

converts xml Scilab help files contained in a set of directories into
html files.

In a first step ("whatis") a whatis.htm file is generated in each
directory using information given in the "SHORT_DESCRIPTION" tag of
each xml file and the given title.

In a second step ("index") the tags LINK are analysed, and xmltohtml
tries to resolve the references using the already known help files
defined in the **%helps** variable.

The third step ("html") it translates the xml file to html using
external program xsltproc and the given xsl file which should be
located in **SCIDIR/man/LANGUAGE/** The generated html files are
located together with the corresponding xml ones.

the last step ("contents") produces a contents.xml file

if dirs is [] then already defined help directories (see
**%helps(:,1)** ) are assumed and titles are searched in
**%helps(:,2)** . So **xmltohtml([])** updates currents html files



See Also
~~~~~~~~

` **help** `_,` **help_skeleton** `_,

.. _
      : ://./utilities/help.htm
.. _
      : ://./utilities/help_skeleton.htm


