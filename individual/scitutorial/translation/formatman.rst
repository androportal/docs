====
"formatman"
====

Scilab Function Last update : january 2001
**formatman** - translates old NROFF man files in a directory into
ascii, tex, html or xml



Calling Sequence
~~~~~~~~~~~~~~~~

formatman(path [,to])




Parameters
~~~~~~~~~~


+ **path** : character string, giving the path of the directory
+ **to** : character string with possible values "ascii", "tex",
  "html", "xml"




Description
~~~~~~~~~~~

This function, not yet fully checked, formats old help files (*.man)
of a given directory, written in a subset of NROFF, to ascii, tex,
html or xml.

NOTE: this function is obsolete and MUST ONLY be used to translate old
NROFF help files into new XML help files.

Known NROFF directives are .TH, .SH, .TP, .RS, .RE, .LP, .IG, .nf,
.fi, .TS, .TE, .ft, .IP

Font handling like


::

    
    
    , , , , ,  ]
       
        


are ignored

**ascii**mode generates a .cat file for each .man file and a whatis
  file
**tex**mode generates a .tex file for each .man file and a whatis.tex
  file
**html**mode generates a .html file for each .man file and a
  index.html file
**xml**mode generates a .xml file for each .man file




See Also
~~~~~~~~

` **help** `_,` **man** `_,

.. _
      : ://./translation/../utilities/man.htm
.. _
      : ://./translation/../utilities/help.htm


