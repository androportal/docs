


browsevar
=========

Scilab variable browser



Calling Sequence
~~~~~~~~~~~~~~~~


::

    browsevar()




Description
~~~~~~~~~~~

`browsevar` is the embedded Scilab variable browser.

`browsevar` lists all user variables the current environnement.

`browsevar` has several features:

+ A simple and comprehensive list
+ Easy tooltips on the dimensions or types
+ Sort by columns
+ Direct connexion to the `editvar component`_ by double-clicking on
  the variable name
+ Filter by type from the menu
+ Filter out Scilab predefined variables (SCI, SCIHOME, %pi, etc) from
  the menu





Examples
~~~~~~~~


::

    a=`rand`_(10,10);
    b="my string";
    browsevar();


.. _editvar component: editvar.html


