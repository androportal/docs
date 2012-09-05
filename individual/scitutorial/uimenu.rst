


uimenu
======

Create a menu or a submenu in a figure



Calling Sequence
~~~~~~~~~~~~~~~~


::

    h=uimenu([prop1,val1] [,prop2, val2] ...)
    h=uimenu(parent,[prop1, val1] [,prop2, val2] ...)




Arguments
~~~~~~~~~

:parent integer Handle of menu's parent
: :prop{1, 2 ...} string character name of a property to set up
: :val{1, 2 ...} scilab object value to affect to the corresponding
  property
: :h integer handle of the corresponding menu
:



Description
~~~~~~~~~~~

This allows to create menus in a figure. If `parent` is a figure, then
the menu item will be added to the menu bar of the figure. If `parent`
is a menu item , then the new item will be added to the parent item,
allowing to create cascaded submenu. To create a customized menu, you
can use the properties listed below:



Properties
~~~~~~~~~~

:Callback String Instruction evaluated by the Scilab interpreter when
  the menu is activated. Under MacOSX, the callback will not be executed
  for a "button menu" (a menu without children), you must specify at
  least a child.
: :Enable {on} | off Enable or disable the menu. If this property is
  set to `"on"` (default), the menu is operational, but if this property
  is set to `"off"`, the menu will not respond to the mouse actions and
  will be grayed out.
: :Checked on | {off} Item check indicator. Setting this property to
"on" the first time displays a checkbox in head of the item's label,
and then checks it. Setting "off" keeps the checkbox and unchecks it.
This property can be used to display items indicating the state of
particular options. Remarks:

    + There is no way to remove the checkbox after its creation, but
      deleting the item.
    + By default, no interactive checking or unchecking is possible. Such
      interactions can be implemented through the Callback property.
    + This property is ignored for parent menus.

: :ForegroundColor [1,3] real vector or string Foreground color of the
  uimenu (font color). A color is specified as Red, Green and Blue
  values. Those values are real in [0,1]. The color can be given as a
  real vector, ie [R,G,B] or a string where each value is separated by a
  "|", ie "R|G|B".
: :Label String. This property represents the text appearing in the
  menu. If the text is enclosed between two $ (dollar sign), then it
  will be considered as a LaTeX expression, and if it is enclosed
  between < and >, it will be considered as a MathML one.
: :Tag String This property is generally used to identify the menu. It
  allows to give it a "name". Mainly used in conjunction with
  `findobj()`.
: :Visible {on} | off Set the visibility of the uimenu. If this
  property is set to `"on"` (default), the uimenu is visible, but if
  this property is set to `"off"`, the uimenu will not appear in its
  parent figure.
:



Examples
~~~~~~~~


::

    f=`figure`_('position', [10 10 300 200]);
    // create a figure
    m=uimenu(f,'label', 'windows');
    // create an item on the menu bar
    m1=uimenu(m,'label', 'operations');
    m2=uimenu(m,'label', 'quit scilab', 'callback', "exit");
    //create two items in the menu "windows"
    m11=uimenu(m1,'label', 'new window', 'callback',"show_window()");
    m12=uimenu(m1,'label', 'clear  window', 'callback',"clf()");
    // create a submenu to the item "operations"
    `close`_(f);
    // close the figure


Menus or menuitem can have a LaTeX or a MathML label


::

    f=`figure`_();
    //LaTeX
    mlatex=uimenu(f,'label', '$\LaTeX$');
    ml1=uimenu(mlatex,'label', '$\int_0^\infty\mathrm{e}^{-x^2}\,dx$');
    ml2=uimenu(mlatex,'label', '$\frac\sqrt{\pi}2$');
    //MathML
    mmathml=uimenu(f,'label', 'MathML');
    mm1=uimenu(mmathml,'label', '<msup><mn>x</mn><mi>2</mi></msup>');
    mm2=uimenu(mmathml,'label', '<mrow><msup><mn>a</mn><mi>2</mi></msup><mo>+</mo><msup><mn>b</mn><mi>2</mi></msup><mo>=</mo><msup><mn>c</mn><mi>2</mi></msup></mrow>');




See Also
~~~~~~~~


+ `figure`_ create a figure
+ `uicontrol`_ create a Graphic User Interface object
+ `uicontextmenu`_ Creates a context menu
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `LaTeX and MathML`_ Display mathematical equations in Scilab
  graphics through the LaTeX or MathML languages.


.. _uicontrol: uicontrol.html
.. _set: set.html
.. _LaTeX and MathML: math_rendering_features_in_graphic.html
.. _get: get.html
.. _uicontextmenu: uicontextmenu.html
.. _figure: figure.html


