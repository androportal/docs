


completion
==========

returns words that start with the text you pass as parameter.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    r = completion(beginning_of_a_word)
    r = completion(beginning_of_a_word,dictionary)
    [functions, commands, variables, macros, graphic_properties, files] = completion(beginning_of_a_word)
    [functions, commands, variables, macros, graphic_properties] = completion(beginning_of_a_word)
    [functions, commands, variables, macros] = completion(beginning_of_a_word)
    [functions, commands, variables] = completion(beginning_of_a_word)
    [functions, commands] = completion(beginning_of_a_word)




Arguments
~~~~~~~~~

:r a string matrix
:

:beginning_of_a_word a string
:

:dictionary a string ("functions", "commands", "variables", "macros",
  "graphic_properties", "files")
:

:functions, commands, variables, macros, graphic_properties, files a
  string matrix
:



Description
~~~~~~~~~~~

Returns words that start with the text you pass as parameter.

functions: a string matrix of functions name (C gateways). See
`what`_.

commands: a string matrix of command words (reserved). See `what`_.

variables: a string matrix of variables names. See `who`_.

macros: a string matrix of macros names. See `who`_.

graphic_properties: a string matrix of graphic properties.

files: a string matrix of files names.



Examples
~~~~~~~~


::

    r = completion('w')
    r = completion('w','functions')
    r = completion('w','commands')
    r = completion('w','variables')
    r = completion('w','macros')
    r = completion('w','graphic_properties')
    r = completion('w','files')
    
    [functions,commands,variables,macros,graphic_properties,files] = completion('w')
    [functions,commands,variables,macros,graphic_properties] = completion('w')
    [functions,commands,variables,macros] = completion('w')
    [functions,commands,variables] = completion('w')
    [functions,commands] = completion('w')




See Also
~~~~~~~~


+ `getscilabkeywords`_ returns a list with all scilab keywords.
+ `who`_ listing of variables
+ `what`_ list the Scilab primitives
+ `libraryinfo`_ get macros and path of a scilab library
+ `librarieslist`_ get scilab libraries


.. _libraryinfo: libraryinfo.html
.. _who: who.html
.. _librarieslist: librarieslist.html
.. _what: what.html
.. _getscilabkeywords: getscilabkeywords.html


