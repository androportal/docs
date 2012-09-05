


stripblanks
===========

Strips / trims leading and trailing blanks (and tabs) of strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    txt=stripblanks(txt[,tabs])




Arguments
~~~~~~~~~

:txt A character string or matrix of character strings
: :tabs if TRUE then tabs are also stripped (default value is FALSE)
:



Description
~~~~~~~~~~~

stripblanks strips / trims leading and trailing blanks (and tabs) of
strings



Examples
~~~~~~~~


::

    a='  123   ';
    '!'+a+'!'
    '!'+stripblanks(a)+'!'
    a=['  123   ',' xyz']
    `strcat`_(stripblanks(a))




