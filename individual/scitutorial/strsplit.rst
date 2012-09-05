


strsplit
========

split a string into a vector of strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    v = strsplit(str,ind)
    [v, matched_separators] = strsplit(str)
    [v, matched_separators] = strsplit(str, matrix_of_strings, limit)
    [v, matched_separators] = strsplit(str, regexp_pattern, limit)




Arguments
~~~~~~~~~

:str A character string to split
: :ind a vector of stricly increasing indices in the interval `[1
  length(str)-1]`.
: :v the resulting column vector of string (dimension >
  `size(ind,'*')+1` ).
: :matched_separators a column vector of the matched separators
: :matrix_of_strings a matrix of strings to search in str
: :regexp_pattern a regular expression pattern
: :limit maximum of limit elements
:



Description
~~~~~~~~~~~

`v= strsplit(str, ind)` splits the string `str` into a vector of
strings at the points given by the indices in `ind` (after each
characters pointed to by the index in ind).

`strsplit(str)` returns same thing as `strsplit(str,1:length(str)-1).`

`strsplit(str, regexp_pattern, limit)` returns an column vector of
strings, each of which is a substring of str formed by splitting it on
boundaries formed by the case-sensitive regular expression pattern.

If there are n occurrences of pattern , the returned array will
contain n+1 items.

For example, if there is no occurrence of pattern , an array with only
one element will be returned. Of course, this is also true if str is
empty.

If limit is set, the returned array will contain a maximum of limit
elements with the last element containing the whole rest of string.

`strsplit(str, matrix_of_strings, limit)` , str is split on any of
elements. It allows to split on different separators for users without
regex knowledge.

If `strsplit()` is called with a second output argument, the column
vector of the matched separators is returned.



Examples
~~~~~~~~


::

    S='strsplit splits a string into a vector of strings';
    strsplit(S,[15 25 30])
    ind=`strindex`_(S,' ')
        
    [r_1, r_2] = strsplit("abcd")
        
    [r_1, r_2] = strsplit("root:x:0:0:root:/root:/bin/bash",":",5)
        
    [r_1, r_2] = strsplit("abc,def:ijk,:lmo","/:|,/")
       
    [r_1, r_2] = strsplit("abc,def:ijk,:lmo",[":";","])    
        
    strsplit("abcdef2ghijkl3mnopqr6stuvw7xyz","/\d+/") 
    
    [r_1, r_2] = strsplit("abcdef2ghijkl3mnopqr6stuvw7xyz","/\d+/",2)




See Also
~~~~~~~~


+ `strcat`_ concatenate character strings
+ `tokens`_ returns the tokens of a character string.
+ `regexp`_ find a substring that matches the regular expression
  string


.. _tokens: tokens.html
.. _regexp: regexp.html
.. _strcat: strcat.html


