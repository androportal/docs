====
"editvar"
====

sciGUI toolbox function Last update : 29/06/2004
**editvar** - Scilab variable editor



Calling Sequence
~~~~~~~~~~~~~~~~

editvar varname




Parameters
~~~~~~~~~~


+ **varname** : variable name. The variable must exist in scilab.




Description
~~~~~~~~~~~

**editvar** is an embedded Scilab variable editor written in TCL/TK.

**editvar** can edit the following variable type: real or complex
constant matrix (type 1), boolean matrix (type 4) an matrix of
character strings (type 10).



Examples
~~~~~~~~


::

    
    a=rand(10,10);
    editvar a;
    b=['hello';'good bye'];
    editvar b;




Author
~~~~~~

Jaime Urzua



