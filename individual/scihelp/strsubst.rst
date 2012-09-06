


strsubst
========

substitute a character string by another in a character string.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    string_out=strsubst(string_in,searchStr,replaceStr)
    string_out=strsubst(string_in,searchStr,replaceStr,[flag])




Arguments
~~~~~~~~~

:string_in a matrix of character string. The strings where to search
  occurrences of `searchStr`
: :searchStr A character string. The string to search in `string`.
: :replaceStr A character string. The replacement string.
: :str_out A matrix of character strings. The result of the
  substitution on `searchStr` by `replaceStr` in `string`
: :flag string("r" for regular expression)
:



Description
~~~~~~~~~~~

`strsubst` replaces all occurrences of `searchStr` in `string` by
`replaceStr`.

When using the forth parameters "r", the searchStr should be a string
of regular expression. And then strsubst is going to match it with
string and replace according to the regular express rules.



Examples
~~~~~~~~


::

    strsubst('SCI/demos/scicos','SCI','.')
    strsubst('SCI/demos/scicos','/',' ')
    strsubst('2' ,'/2(]*)?$\1/' ,'0','r')




See Also
~~~~~~~~


+ `string`_ conversion to string
+ `strings`_ Scilab Object, character strings


.. _strings: strings.html
.. _string: string.html


