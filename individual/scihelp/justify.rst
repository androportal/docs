


justify
=======

Justify character array.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Tj=justify(T,opt)




Arguments
~~~~~~~~~

:T A matrix of character string.
: :Tj A matrix of character string. the justified result
: :opt A character option with possible values
    :'r' or 'right' for right justification
    : :'l' or 'left' for left justification
    : :'c' or 'center' for centering justification
    :

:



Description
~~~~~~~~~~~

`justify` justify the column of a matrix of string accdording to the
given option.



Examples
~~~~~~~~


::

    t=['1234','x','adfdfgdfghfgj'
       '1','354556','dgf'
       'sdfgd','','sdfsf'];
    
    justify(t,'l')
    justify(t,'c')
    justify(t,'r')




See Also
~~~~~~~~


+ `length`_ length of object
+ `part`_ extraction of strings


.. _part: part.html
.. _length: length.html


