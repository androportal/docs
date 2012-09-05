


findmsvccompiler
================

detects Microsoft C Compiler



Calling Sequence
~~~~~~~~~~~~~~~~


::

    msvc = findmsvccompiler()




Arguments
~~~~~~~~~

:msvc returns a string to identify Visual studio version. string
  Visual Studio version msvc70 Microsoft Visual Studio 2002 Professional
  or above. msvc71 Microsoft Visual Studio 2003 Professional or above.
  msvc80express Microsoft Visual Studio 2005 Express Edition. msvc80std
  Microsoft Visual Studio 2005 Standard Edition. msvc80pro Microsoft
  Visual Studio 2005 Professional or above. msvc90express Microsoft
  Visual Studio 2008 Express Edition. msvc90std Microsoft Visual Studio
  2008 Standard Edition. msvc90pro Microsoft Visual Studio 2008
  Professional or above. msvc100express Microsoft Visual Studio 2010
  Express Edition msvc100pro Microsoft Visual Studio 2010 Professional
  or above. unknown not detected or unknown version.
:



Description
~~~~~~~~~~~

detects Microsoft C Compiler.



Examples
~~~~~~~~


::

    msvc = findmsvccompiler()




