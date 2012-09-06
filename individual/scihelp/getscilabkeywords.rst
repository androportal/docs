


getscilabkeywords
=================

returns a list with all scilab keywords.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    list_keywords=getscilabkeywords()




Arguments
~~~~~~~~~

:list_keywords a list
:



Description
~~~~~~~~~~~

list_keywords(1) : primitives

list_keywords(2) : commands

list_keywords(3) : predef variables

list_keywords(4) :scilab functions

list_keywords(5) :xcos functions



Examples
~~~~~~~~


::

    list_keywords = getscilabkeywords();
    primitives = list_keywords(1)
    commands = list_keywords(2)
    predef_var = list_keywords(3)
    scilab_functions = list_keywords(4)
    xcos_functions = list_keywords(5)




