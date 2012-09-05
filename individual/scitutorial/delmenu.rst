


delmenu
=======

interactive button or menu deletion



Calling Sequence
~~~~~~~~~~~~~~~~


::

    delmenu(button)
    delmenu(gwin,button)




Arguments
~~~~~~~~~

:button a character string. The button name. On Windows operating
  systems (not X_window), an & should be placed before the character in
  the name used for keyboard shortcut; this character is underlined on
  the GUI.
: :gwin integer. The number of graphic window where the button is
  required to be installed
:



Description
~~~~~~~~~~~

The function allows the user to delete buttons or menus create by
`addmenu` in the main or graphics windows command panels. Predefined
buttons on Scilab graphic windows can also be deleted.

If possible, it is better to delete first the latest created button
for a given window to avoid gaps in command panels.



Examples
~~~~~~~~


::

    `addmenu`_('foo')
    delmenu('foo')




See Also
~~~~~~~~


+ `setmenu`_ interactive button or menu activation
+ `unsetmenu`_ interactive button or menu or submenu de-activation
+ `addmenu`_ interactive button or menu definition


.. _addmenu: addmenu.html
.. _unsetmenu: unsetmenu.html
.. _setmenu: setmenu.html


