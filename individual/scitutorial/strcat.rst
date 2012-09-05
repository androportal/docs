


strcat
======

concatenate character strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    txt=strcat(vector_of_strings [,string_added])
    txt=strcat(vector_of_strings [,string_added, ["flag"]])




Arguments
~~~~~~~~~

:vector_of_strings vector of strings
: :string_added string added, default value is the emptystr `""`
: :txt string
: :"flag" string ( "r" for return a row matrix, "c" for return a
  column matrix)
:



Description
~~~~~~~~~~~

`txt=strcat(vector_of_strings)` concatenates character strings :
`txt=vector_of_strings(1)+...+vector_of_strings(n)`

`txt=strcat(vector_of_strings,string_added)` returns `txt=vector_of_st
rings(1)+string_added+...+string_added+vector_of_strings(n)`.

The plus symbol does the same: `"a"+"b"` is the same as
`strcat(["a","b"]).`

If size of vector_of_strings is one, it returns
`txt=vector_of_strings(1);`

`strcat('A','B')` returns 'A' and not 'AB' as `strcat(['A','B'])`



Examples
~~~~~~~~


::

    strcat(`string`_(1:10),',')
    strcat(["a","b"])
    strcat(["a","b"],'|')
    strcat('A')
    strcat('A','B')
    strcat(['A','B'])
    strcat(['A','B'],'')
    
    m =["a" "b" ; "c" "d"];
    strcat(m, "r")
    strcat(m, "", "r")
    strcat(m, "", "c")




See Also
~~~~~~~~


+ `string`_ conversion to string
+ `strings`_ Scilab Object, character strings


.. _strings: strings.html
.. _string: string.html


