====
"help_skeleton"
====

Scilab Function Last update : 13/01/2005
**help_skeleton** - build the skeleton of the xml help file associated
to a Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~

txt = help_skeleton(funname [,path])




Parameters
~~~~~~~~~~


+ **funname** : character string : the name of the function
+ **path** : character string : the path where the file will be create
  if required. If this argument is not given the skeleton is returned as
  a string.
+ **txt** : the XML code or the complete xml file path




Description
~~~~~~~~~~~

**txt = help_skeleton(funname)** generates a vector of strings
containing the skeleton of the XML code describing the help of the
function **funname** .

**fullpath = help_skeleton(funname,dirpath)** generates the XML code
describing the help of the function **funname** in a file named
**funname.xml** in the directory specified by the path **dirpath** .
In this case the function returns the file path.



Examples
~~~~~~~~


::

    
    
       function [y,z]=foo(a,b),y=a+b,z=1,endfunction
        p=help_skeleton('foo',TMPDIR)
        scipad(p)
      
      




See Also
~~~~~~~~

` **help** `_,



Author
~~~~~~

Serge Steer, INRIA

.. _
      : ://./utilities/help.htm


