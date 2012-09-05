


strindex
========

search position of a character string in an other string.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ind=strindex(haystack,needle,[flag])
    [ind,which]=strindex(haystack,needle,[flag])




Arguments
~~~~~~~~~

:haystack A character string. The string where to search occurrences
  of `needle`
: :needle A character string or character string vector . The
  string(s) to search in `haystack`
: :ind vector of indexes
: :which vector of indexes
: :flag string("r" for regular expression)
:



Description
~~~~~~~~~~~

`strindex` searches indexes where `needle (i)` is found in `haystack`

for each `k` it exist a `i` shuch that
`part(haystack,ind(k)+(0:length(needle(i))-1))` is the same string
than `needle(i)`. If `which` argument is required it contains these
`i`. When using the third parameters "r", the needle should be a
string of regular expression. And then strindex is going to match it
with haystack according to the regular express rules.

`strindex` without regular expression argument is based on Knuth-
Morris-Pratt algoritm.

This algorithm is more powerful than that used in scilab 4.x. In some
special case, result can be different.

example:

// scilab 5.x

-->[k,w]=strindex('aab',['a','ab'])

w = 1. 1. 2. k = 1. 2. 2.

// scilab 4.x

-->[k,w]=strindex('aab',['a','ab'])

w = 1. 1. k = 1. 2.

The rules of regular expression are similar to perl language. For a
quick start , see `http://perldoc.perl.org/perlrequick.html`_. For a
more in-depth tutorial on , see
`http://perldoc.perl.org/perlretut.html`_ and for the reference page,
see `http://perldoc.perl.org/perlre.html`_



Examples
~~~~~~~~


::

    k=strindex('SCI/demos/scicos','/')
    k=strindex('SCI/demos/scicos','SCI/')
    k=strindex('SCI/demos/scicos','!')
    k=strindex('aaaaa','aa') 
    k=strindex('SCI/demos/scicos',['SCI','sci'])
    [k,w]=strindex('1+3*abc/2.33',['+','-','*','/'])
    k=strindex('2' ,'/2(]*)?$\1/' ,'r')




See Also
~~~~~~~~


+ `string`_ conversion to string
+ `strings`_ Scilab Object, character strings
+ `regexp`_ find a substring that matches the regular expression
  string
+ `strsubst`_ substitute a character string by another in a character
  string.


.. _http://perldoc.perl.org/perlretut.html: http://perldoc.perl.org/perlretut.html
.. _strsubst: strsubst.html
.. _strings: strings.html
.. _string: string.html
.. _http://perldoc.perl.org/perlre.html: http://perldoc.perl.org/perlre.html
.. _http://perldoc.perl.org/perlrequick.html: http://perldoc.perl.org/perlrequick.html
.. _regexp: regexp.html


