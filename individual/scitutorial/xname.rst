


xname
=====

change the name of the current graphics window



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xname(name)




Arguments
~~~~~~~~~

:name string, new name of the graphics window.
:



Description
~~~~~~~~~~~

`xname` changes the name of the current graphics window.



Examples
~~~~~~~~


::

    xname("Empty graphic")
    x=-%pi*2:0.1:%pi*2;
    `plot`_(x,`sin`_(x))
    xname("sin(x) with x between -%pi*2 and %pi*2")




