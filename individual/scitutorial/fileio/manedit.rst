====
"manedit"
====

Scilab Function Last update : 18/05/2005
**manedit** - editing a manual item



Calling Sequence
~~~~~~~~~~~~~~~~

manedit(manitem)




Parameters
~~~~~~~~~~


+ **manitem** : character string (usually, name of a function)




Description
~~~~~~~~~~~

**edit(manitem)** opens the xml file associated to **manitem** in the
scipad editor.

If there is no xml file associated with **manitem** and **manitem** is
the name of a Scilab function scipad opens with the skeleton of the
xml file produced by ` **help_skeleton** `_. This file is located in
TMPDIR.



Examples
~~~~~~~~


::

    
    
    manedit('manedit')
    
    function [x,y,z]=foo123(a,b),
    x=a+b,y=a-b,z=a==b
    endfunction
    manedit foo123
     
      




See Also
~~~~~~~~

` **help** `_,` **help_skeleton** `_,

.. _
      : ://./fileio/../utilities/help.htm
.. _
      : ://./fileio/../utilities/help_skeleton.htm


