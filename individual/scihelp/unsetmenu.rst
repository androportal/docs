


unsetmenu
=========

interactive button or menu or submenu de-activation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    unsetmenu(button,[nsub])
    unsetmenu(gwin,button,[nsub])




Arguments
~~~~~~~~~

:button a character string. The button name
: :gwin integer. The number of graphic window where the button is
  installed
: :nsub integer. The number of submenu to de-activate (if any). If
  button has no sub-menu, `nsub` is ignored
:



Description
~~~~~~~~~~~

The function allows the user to deactivate buttons or menus created by
`addmenu` in the main or graphics windows command panels.



Examples
~~~~~~~~


::

    `addmenu`_('foo')
    unsetmenu('foo')
    unsetmenu(`gettext`_("File"), 3)




See Also
~~~~~~~~


+ `delmenu`_ interactive button or menu deletion
+ `setmenu`_ interactive button or menu activation
+ `addmenu`_ interactive button or menu definition


.. _addmenu: addmenu.html
.. _setmenu: setmenu.html
.. _delmenu: delmenu.html


