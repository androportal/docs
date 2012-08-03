====
"setmenu"
====

Scilab Function Last update : December 1995
**setmenu** - interactive button or menu activation



Calling Sequence
~~~~~~~~~~~~~~~~

setmenu(button [,nsub])
setmenu(gwin,button [,nsub])




Parameters
~~~~~~~~~~


+ **button** : a character string. The button name
+ **gwin** : integer. The number of graphic window where the button is
  installed
+ **nsub** : integer. The number of submenu to de-activate (if any).
  If button has no sub-menu, **nsub** is ignored




Description
~~~~~~~~~~~

The function allows the user to make active buttons or menus created
by **addmenu** in the main or graphics windows command panels.



Examples
~~~~~~~~


::

    
    
    addmenu('foo')   //New button made in main scilab window
    unsetmenu('foo')   //button foo cannot be activated (grey string)
    setmenu('foo')     //button foo can be activated (black string)
     
      




See Also
~~~~~~~~

` **delmenu** `_,` **unsetmenu** `_,` **addmenu** `_,

.. _
      : ://./gui/unsetmenu.htm
.. _
      : ://./gui/delmenu.htm
.. _
      : ://./gui/addmenu.htm


