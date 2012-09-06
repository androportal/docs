


uicontextmenu
=============

Creates a context menu



Calling Sequence
~~~~~~~~~~~~~~~~


::

    h = uicontextmenu()




Description
~~~~~~~~~~~

This function creates an empty context menu where menus can be added
using `uimenu`_.



Example
~~~~~~~


::

    // Create a context menu
    hMenu = uicontextmenu();
    // Create sub menus
    hItem1 = `uimenu`_("Label", "Item1", "Parent", hMenu, "Callback", "disp(""Item1 clicked!"")");
    hItem2 = `uimenu`_("Label", "Item2", "Parent", hMenu, "Callback", "disp(""Item2 clicked!"")");
    hItem3 = `uimenu`_("Label", "Item3", "Parent", hMenu, "Callback", "disp(""Item3 clicked!"")");




See Also
~~~~~~~~


+ `uicontrol`_ create a Graphic User Interface object
+ `uimenu`_ Create a menu or a submenu in a figure


.. _uicontrol: uicontrol.html
.. _uimenu: uimenu.html


