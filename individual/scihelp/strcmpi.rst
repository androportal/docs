


strcmpi
=======

compare character strings (case independent)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = strcmpi(string_one,string_two)




Arguments
~~~~~~~~~

:string_one A character string or matrix of character strings
: :string_two A character string or matrix of character strings
: :res matrix.
:



Description
~~~~~~~~~~~

`res = strcmpi(string_one,string_two)` returns an integral value
indicating the relationship between the strings.

A value greater than zero indicates that the first character that does
not match has a greater value in `string_one` than in `string_two`

And a value less than zero indicates the opposite.



Examples
~~~~~~~~


::

    TXT1 = ['scilab','SciLab';'Strcmp','STRcmp'];
    TXT2 = ['ScIlAb','sciLab';'sTrCmP','StrCMP'];
    strcmpi(TXT1,TXT2)
    strcmpi(TXT1,'scilab')




See Also
~~~~~~~~


+ `strcat`_ concatenate character strings
+ `strcmp`_ compare character strings


.. _strcmp: strcmp.html
.. _strcat: strcat.html


