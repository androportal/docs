====
"convstr"
====

Scilab Function Last update : April 1993
**convstr** - case conversion



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=convstr(str-matrix, ["flag"])




Parameters
~~~~~~~~~~


+ **str-matrix, y** : matrices of strings
+ **"flag" ** : string ( **"u"** for upper or **"l"** for lower
  (default value))




Description
~~~~~~~~~~~

converts the matrix of strings **str-matrix** into lower case (for
**"l"** ;default value) or upper case (for **"u"** ).



Examples
~~~~~~~~


::

    
    
    A=['this','is';'my','matrix'];
    convstr(A,'u')
     
      




