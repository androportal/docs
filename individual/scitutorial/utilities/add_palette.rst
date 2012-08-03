====
"add_palette"
====

Scilab Function Last update : 26/05/2005
**add_palette** - Add an entry in the Scicos palettes list



Calling Sequence
~~~~~~~~~~~~~~~~

add_palette(title,path)




Parameters
~~~~~~~~~~


+ **title** : a character string, the palette title
+ **path** : a character string, the path of the scicos file
  associated with the palette




Description
~~~~~~~~~~~

This function adds a new entry in the Scicos palettes list. The
palette should be executed by a Scilab script file. If the given
**title** already exists in the palette list associated with the same
file nothing is done. The function checks if the file exist.



See Also
~~~~~~~~

` **scicos** `_,



Author
~~~~~~

Serge Steer , INRIA

.. _
      : ://./utilities/../scicos/scicos.htm


