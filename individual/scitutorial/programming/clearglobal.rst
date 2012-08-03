====
"clearglobal"
====

Scilab Function Last update : April 1999
**clearglobal** - kills global variables



Calling Sequence
~~~~~~~~~~~~~~~~

clearglobal()
clearglobal nam1 .. namn
clearglobal('nam1', ..,'namn')




Parameters
~~~~~~~~~~


+ **nam1,..., namn** : valid variable names




Description
~~~~~~~~~~~

**clearglobal() ** kills all the global variables.

**clearglobal nam1 .. namn** kills the global variables given by their
names

Note that **clearglobal() ** only clears the global variables, the
local copies of these global variables are not destroyed.



Examples
~~~~~~~~


::

    
    
    global a b c
    a=1;b=2;c=3;
    who('global')
    clearglobal b
    who('global')
     
      




See Also
~~~~~~~~

` **global** `_,` **who** `_,

.. _
      : ://./programming/global.htm
.. _
      : ://./programming/who.htm


