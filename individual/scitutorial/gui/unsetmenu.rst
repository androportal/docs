====
"unsetmenu"
====

Scilab Function Last update : December 1995
**unsetmenu** - interactive button or menu or submenu de-activation



Calling Sequence
~~~~~~~~~~~~~~~~

unsetmenu(button,[nsub])
unsetmenu(gwin,button,[nsub])




Parameters
~~~~~~~~~~


+ **button** : a character string. The button name
+ **gwin** : integer. The number of graphic window where the button is
  installed
+ **nsub** : integer. The number of submenu to de-activate (if any).
  If button has no sub-menu, **nsub** is ignored




Description
~~~~~~~~~~~

The function allows the user to desactivate buttons or menus created
by **addmenu** in the main or graphics windows command panels.



Examples
~~~~~~~~


::

    
    
    //addmenu('foo')
    //unsetmenu('foo')
    //unsetmenu('File',2)
     
      




See Also
~~~~~~~~

` **delmenu** `_,` **setmenu** `_,` **addmenu** `_,

.. _
      : ://./gui/addmenu.htm
.. _
      : ://./gui/delmenu.htm
.. _
      : ://./gui/setmenu.htm


