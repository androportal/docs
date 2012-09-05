


help_skeleton
=============

build the skeleton of the xml help file associated to a Scilab
function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    txt = help_skeleton(funname [,path [,language]])




Arguments
~~~~~~~~~

:funname character string : the name of the function
: :path character string : the path where the file will be create if
  required. If this argument is not given the skeleton is returned as a
  string.
: :language character string :with possible value "fr_FR" or "en_US"
  the defaultis "en_US"
: :txt the XML code or the complete XML file path
:



Description
~~~~~~~~~~~

`txt = help_skeleton(funname)` generates a vector of strings
containing the skeleton of the XML code describing the help of the
function `funname`.

`fullpath = help_skeleton(funname,dirpath)` generates the XML code
describing the help of the function `funname` in a file named
`funname.xml` in the directory specified by the path `dirpath`. In
this case the function returns the file path.



Examples
~~~~~~~~


::

    function [y, z]=foo(a, b),y=a+b,z=1,endfunction
    p=help_skeleton('foo',TMPDIR)
    if (`isdef`_('editor') | (`funptr`_('editor')<>0)) then
      `editor`_(p);
    end




See Also
~~~~~~~~


+ `help`_ on-line help command
+ `Scilab documentation format`_ on line help XML file description
  format


.. _Scilab documentation format: man.html
.. _help: help.html


