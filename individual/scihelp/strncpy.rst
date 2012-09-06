


strncpy
=======

Copy characters from strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = strncpy(str1,num)




Arguments
~~~~~~~~~

:str1 A character string or matrix of character strings
: :num matrix Maximum number of characters to be copied from source
: :res A character string or matrix of character strings
:



Description
~~~~~~~~~~~

`res = strncpy(str1,num)` Copies the first num characters of source to
destination.

num must have same dimensions than str1 or str2 must be a number.



Examples
~~~~~~~~


::

    strncpy('scilab',3)
    strncpy(['scilab','SciLab';'strncpy','strstr'],3)
    strncpy(['scilab','SciLab';'strncpy','strstr'],[1,2;3,4])




See Also
~~~~~~~~


+ `strcat`_ concatenate character strings
+ `strcmp`_ compare character strings


.. _strcmp: strcmp.html
.. _strcat: strcat.html


