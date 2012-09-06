


grep
====

find matches of a string in a vector of strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    row=grep(haystack,needle )
    [row,which]=grep(haystack,needle )
    row=grep(haystack,needle ,[flag])
    [row,which]=grep(haystack,needle ,[flag])




Arguments
~~~~~~~~~

:haystack A Row vector of character strings.
: :needle A character string or a row vector of character strings .
  The string(s) to search in `haystack.`
: :row vector of indices: row where a match has been found or an empty
  matrix if no match found.
: :which vector of indices: index of needle string found or an empty
  matrix if no match found.
: :flag Character ("r" for regular expression)
:



Description
~~~~~~~~~~~

Foreach entry of `haystack`, grep searches if at least a string in
`needle` which matches a substring. The `haystack` entries index where
at least a match has been found are returned in the `row` output
argument. The optional `which` output argument gives the index of
first string of `needle` found.

When using the third parameter `flag="r"`, the `needle` is expected to
be a regular expression string. In this case, `grep` uses the `needle`
as a regular expression and compares it against `haystack` according
to the regular express rules. See the `regexp`_ function for details
about regular expressions.



Example #1
~~~~~~~~~~

In the following example, we search one or two strings in a text,
which is stored in the `txt` variable.


::

    txt=['find matches of a string in a vector of strings'
         'search position of a character string in an other string'
         'Compare Strings'];
    
    grep(txt,'strings')
    grep(txt,['strings' 'Strings'])
    
    [r,w]=grep(txt,['strings' 'Strings'])




Example #2
~~~~~~~~~~

In the following example, we perform regexp searches.


::

    str = ["hat";"cat";"hhat";"chat";"hcat";"ccchat";"at";"dog"]
    
    grep(str,'/[hc]+at/','r')
    grep(str,'/[hc]?at/','r')
    grep(str,'/cat|dog/','r')




See Also
~~~~~~~~


+ `strindex`_ search position of a character string in an other
  string.
+ `regexp`_ find a substring that matches the regular expression
  string


.. _strindex: strindex.html
.. _regexp: regexp.html


