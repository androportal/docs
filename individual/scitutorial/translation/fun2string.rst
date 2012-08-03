====
"fun2string"
====

Scilab Function Last update : 10/05/2005
**fun2string** - generates ascii definition of a scilab function



Calling Sequence
~~~~~~~~~~~~~~~~

txt=fun2string(fun,name)




Parameters
~~~~~~~~~~


+ **fun** : a function type variable
+ **name** : a character string, the generated function name
+ **txt** : a column vector of strings, the text giving the scilab
  instructions




Description
~~~~~~~~~~~

Given a loaded Scilab function pseudo-code fun2string allows to re-
generate the code. The generated code is indented and beautified.

The mechanism is similar, but simpler than the mfile2sci one. It may
be adapted for syntax translations.



Examples
~~~~~~~~


::

    
    
    txt=fun2string(asinh,'foo');
    write(%io(2),txt,'(a)')
     
      




See Also
~~~~~~~~

` **getf** `_,` **edit** `_,` **macrovar** `_,

.. _
      : ://./translation/../functions/macrovar.htm
.. _
      : ://./translation/../functions/getf.htm
.. _
      : ://./translation/../functions/edit.htm


