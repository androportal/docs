====
"edit"
====

Scilab Function Last update : 26/05/2005
**edit** - function editing



Calling Sequence
~~~~~~~~~~~~~~~~

newname=edit(functionname [, editor])




Parameters
~~~~~~~~~~


+ **functionname** : character string
+ **editor** : character string




Description
~~~~~~~~~~~

If functionname is the name of a defined scilab function
**edit(functionname ,[editor])** try to open the associated file
**functionname.sci** . If this file can't be modified **edit** first
create a copy of this file in the TMPDIR directory.

If functionname is the name of a undefined scilab function **edit**
create a functionname.sci file in the TMPDIR directory.

When leaving the editor the modified or defined function is loaded
into Scilab under the name **newname** .

The editor character string can be used to specify your favourite text
editor. It is generally a system command, or the string "scipad", in
which case the internal editor is used.

Default editor is Emacs. This function should be customized according
to your needs.



Examples
~~~~~~~~


::

    
    
    //newedit=edit('edit')  //opens editor with text of this function
    //myfunction=edit('myfunction')  //opens editor for a new function
     
      




See Also
~~~~~~~~

` **manedit** `_,` **scipad** `_,

.. _
      : ://./functions/../utilities/scipad.htm
.. _
      : ://./functions/../fileio/manedit.htm


