


setmenu
=======

interactive button or menu activation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    setmenu(button [,nsub])
    setmenu(gwin,button [,nsub])




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

The function allows the user to make active buttons or menus created
by `addmenu` in the main or graphics windows command panels.



Examples
~~~~~~~~


::

    `addmenu`_('foo')   // New button made in main scilab window
    `unsetmenu`_('foo') // button foo cannot be activated (grey string)
    setmenu('foo')   // button foo can be activated (black string)




See Also
~~~~~~~~


+ `delmenu`_ interactive button or menu deletion
+ `unsetmenu`_ interactive button or menu or submenu de-activation
+ `addmenu`_ interactive button or menu definition


.. _addmenu: addmenu.html
.. _unsetmenu: unsetmenu.html
.. _delmenu: delmenu.html


