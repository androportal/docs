====
"justify"
====

Scilab Function Last update : April 1993
**justify** - Justify character array.



Calling Sequence
~~~~~~~~~~~~~~~~

Tj=justify(T,opt)




Parameters
~~~~~~~~~~


+ **T** : a matrix of character string.
+ **Tj** : a matrix of character string. the justified result
+ **opt** : a character string option with possible values

    + **'r' ** or 'right' for right justification
    + **'l' ** or 'left' for left justification
    + **'c' ** or 'center' for centering justification





Description
~~~~~~~~~~~

**justify** justify the column of a matrix of string accdording to the
given option.



Examples
~~~~~~~~


::

    
    
    t=['1234','x','adfdfgdfghfgj'
       '1','354556','dgf'
       'sdfgd','','sdfsf'];
    
    justify(t,'l')
    justify(t,'c')
    
     
      




See Also
~~~~~~~~

` **length** `_,` **part** `_,

.. _
      : ://./strings/length.htm
.. _
      : ://./strings/part.htm


