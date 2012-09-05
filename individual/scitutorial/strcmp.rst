


strcmp
======

compare character strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = strcmp(string_one,string_two,[,'i'])




Arguments
~~~~~~~~~

:string_one A character string or matrix of character strings
: :string_two A character string or matrix of character strings
: :'i' parameter to do stricmp (case independent), default value is
  's'
: :res matrix.
:



Description
~~~~~~~~~~~

`res = strcmp(string_one,string_two)` returns an integral value
indicating the relationship between the strings.

A value greater than zero indicates that the first character that does
not match has a greater value in `string_one` than in `string_two`

And a value less than zero indicates the opposite.



Examples
~~~~~~~~


::

    TXT1 = ['scilab','SciLab';'Strcmp','STRcmp'];
    TXT2 = ['ScIlAb','sciLab';'sTrCmP','StrCMP'];
    strcmp(TXT1,TXT2)
    strcmp(TXT1,'scilab')
    strcmp(TXT1,'SciLab')
    strcmp(TXT1,TXT2,'i')




See Also
~~~~~~~~


+ `strcat`_ concatenate character strings
+ `strcmpi`_ compare character strings (case independent)


.. _strcmpi: strcmpi.html
.. _strcat: strcat.html


