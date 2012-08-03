====
"add_help_chapter"
====

Scilab Function Last update : 13/01/2005
**add_help_chapter** - Add an entry in the helps list



Calling Sequence
~~~~~~~~~~~~~~~~

add_help_chapter(title,path)




Parameters
~~~~~~~~~~


+ **title** : a character string, the help chapter title
+ **path** : a character string, the path of the directory containing
  the help files.




Description
~~~~~~~~~~~

This function adds a new entry in the helps list. The help chapter
files are to be located in a single directory. If the given **title**
already exists in the helps list associated with the same path nothing
is done. The function checks if the directory exist.



See Also
~~~~~~~~

` **help** `_,` **add_demo** `_,



Author
~~~~~~

Serge Steer , INRIA

.. _
      : ://./utilities/help.htm
.. _
      : ://./utilities/add_demo.htm


