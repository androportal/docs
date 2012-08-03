====
"apropos"
====

Scilab Function Last update : 05/07/2005
**apropos** - searches keywords in Scilab help



Calling Sequence
~~~~~~~~~~~~~~~~

apropos(key)
apropos(regexp)




Parameters
~~~~~~~~~~


+ **key** : character string. give the sequence of characters to be
  found
+ **regexp** : character string. give the regular expression to be
  found (only with "Scilab Browser")




Description
~~~~~~~~~~~

**apropos(key)** looks for Scilab help files containing keywords
**key** in their short description section.

With Scilab Browser only, **apropos(regexp)** looks for Scilab help
files containing regular expression **regexp** in their short
description section.



Examples
~~~~~~~~


::

    
    
    apropos('ode')
    apropos ode 
    apropos "list of"
    
    //next only for Scilab Browser
    global %browsehelp;%browsehelp_save=%browsehelp;%browsehelp="Scilab Browser";
    
    apropos "sin.*hyperbolic"
    apropos "^ab"  //search help beginning the two characters "ab"
    apropos "quadratic.*solver"
    
    %browsehelp=%browsehelp_save;
     
      




See Also
~~~~~~~~

` **help** `_,` **man** `_,

.. _
      : ://./utilities/help.htm
.. _
      : ://./utilities/man.htm


