====
"uimenu"
====

Scilab Function Last update : 19/04/2005
**uimenu** - Create a menu or a submenu in a figure



Calling Sequence
~~~~~~~~~~~~~~~~

h=uimenu([prop1,val1] [,prop2, val2] ...)
h=uimenu(parent,[prop1, val1] [,prop2, val2] ...)




Parameters
~~~~~~~~~~


+ **parent ** : integer Handle of menu's parent
+ **prop{1, 2 ...}** : string character name of a property to set up
+ **val{1, 2 ...}** : scilab object value to affect to the
  corresponding property
+ **h** : integer handle of the corresponding menu




Description
~~~~~~~~~~~

This allows to create menus in a figure. If **parent** is a figure,
then the menu item will be added to the menu bar of the figure. If
**parent** is a menu item , then the new item will be added to the
parent item, allowing to create cascaded submenu. To create a
customized menu, you can use the properties listed below:



Properties
~~~~~~~~~~


