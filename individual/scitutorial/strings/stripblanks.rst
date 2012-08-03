====
"stripblanks"
====

Scilab Function Last update : 28/10/2004
**stripblanks** - strips leading and trailing blanks (and tabs) of
strings



Calling Sequence
~~~~~~~~~~~~~~~~

txt=stripblanks(txt[,tabs])




Parameters
~~~~~~~~~~


+ **txt** : string or matrix of strings
+ **tabs** : if TRUE then tabs are also stripped (default value is
  FALSE)




Description
~~~~~~~~~~~

stripblanks strips leading and trailing blanks (and tabs) of strings



Examples
~~~~~~~~


::

    
    
    a='  123   ';
    '!'+a+'!'
    '!'+stripblanks(a)+'!'
    a=['  123   ',' xyz']
    strcat(stripblanks(a))
     
      




