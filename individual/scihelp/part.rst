


part
====

extraction of strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [strings_out] = part(strings_in, v)




Arguments
~~~~~~~~~

:strings_in, strings_out Matrix of character strings.
: :v Integer row vector.
:



Description
~~~~~~~~~~~

Let `s[k]` stands for the `k` character of string `s` ( or the white
space character if `k >length(s)`).

`part` returns `strings_out`, a matrix of character strings, such that
`strings_out(i,j)` is the string `"s[v(1)]...s[v(n)]"` (
`s=strings_in(i,j)` ).



Examples
~~~~~~~~


::

    // returns characters position 8 to 11
    part("How to use ""part"" ?",8:11)
    
    // returns characters position 2 to 4 for each element
    // no characters replaced by ''
    c = part(['a','abc','abcd'],2:4)
    
    // returns character position 1 for each element and add characters position 4 to 7 of each element
    c = part(['abcdefg','hijklmn','opqrstu'],[1,4:7]);
    
    // returns character 4 for each element, add characters position 1 to 7 and add character position 4 for each element
    c = part(['abcdefg','hijklmn','opqrstu'],[4,1:7,4]);
    
    // returns character position 1,add again character position 1 and character position 2
    c=part(['a','abc','abcd'],[1,1,2])
    
    // a a a  
    part(['a','abc','abcd'],[1])
    
    // aa aa aa 
    part(['a','abc','abcd'],[1,1])
    
    // aa aab aab 
    part(['a','abc','abcd'],[1,1,2])




See Also
~~~~~~~~


+ `string`_ conversion to string
+ `length`_ length of object


.. _length: length.html
.. _string: string.html


