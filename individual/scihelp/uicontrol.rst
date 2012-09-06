


uicontrol
=========

create a Graphic User Interface object



Calling Sequence
~~~~~~~~~~~~~~~~


::

    h = uicontrol(PropertyName,PropertyValue,...)
    h = uicontrol(parent,PropertyName,PropertyValue,...)
    h = uicontrol(uich)




Description
~~~~~~~~~~~

This routine creates an object in a figure.

If the handle of the figure is given (as the first parameter), the
uicontrol is created in this figure. If no handle is given, the
uicontrol is created in the current figure (which may be obtained with
a call to `gcf()`). If there is no current figure, then one is created
before the creation of the uicontrol.

Then when the control is created, the properties given as parameters
are set with the corresponding values. It is equivalent to create the
uicontrol, and then set its properties with the `set()` command.
Nevertheless, it generally more efficient to set the properties in the
call to `uicontrol()`. Scilab and all the graphic objects communicate
through the property mechanism. Thus, to create adapted uicontrol, one
has to know the use of the property fields.

`h= uicontrol(PropertyName, PropertyValue,...)` creates an uicontrol
and assigns the specified properties and values to it. It assigns the
default values to any properties you do not specify. The default
uicontrol style is a "Pushbutton". The default parent is the current
figure. See the Properties section for information about these and
other properties.

`h= uicontrol(parent, PropertyName, PropertyValue,...)` creates a
uicontrol in the object specified by the handle, parent. If you also
specify a different value for the Parent property, the value of the
Parent property takes precedence. parent is the handle of a figure.

`h= uicontrol(uich)` gives focus to the uicontrol specified by uich.



Properties
~~~~~~~~~~

:BackgroundColor [1,3] real vector or string Background color of the
  uicontrol. A color is specified as Red, Green and Blue values. Those
  values are real in [0,1]. The color can be given as a real vector, ie
  [R,G,B] or a string where each value is separated by a "|", ie
  "R|G|B".
: :Callback String Instruction evaluated by the Scilab interpreter
  when an uicontrol is activated. (for example when you click on a
  button).
: :Callback_Type Integer The type of callback transmitted to the
uicontrol.

    + `-1` none (callback desactivated)
    + `0` a Scilab instruction
    + `1` a C or a Fortran function
    + `2` a Scilab function

: :Enable {on} | off Enable or disable the uicontrol. If this property
  is set to `"on"` (default), the uicontrol is operational, but if this
  property is set to `"off"`, the uicontrol will not respond to the
  mouse actions and will be grayed out.
: :FontAngle {normal} | italic | oblique For a control containing some
  text, this property sets the slant of the font.
: :FontSize Scalar For a control containing some text, this property
  sets the size of the font in FontUnits.
: :FontUnits {points} | pixels | normalized For a control containing
  some text, this property sets the units with which the FontSize is
  specified.
: :FontWeight light | {normal} | demi | bold For a control containing
  some text, this property sets the weight of the used font.
: :FontName String Used to choose the name of the font selected to
  display the text of the control.
: :ForegroundColor [1,3] real vector or string Foreground color of the
  uicontrol. A color is specified as Red, Green and Blue values. Those
  values are real in [0,1]. The color can be given as a real vector, ie
  [R,G,B] or a string where each value is separated by a "|", ie
  "R|G|B".
: :HorizontalAlignment left | {center} | right Set text horizontal
  alignment in the uicontrol. This property has only effect with Text,
  Edit and Check Boxes.
: :ListboxTop Scalar For a ListBox, this property tells which item of
  the list appears on the first line of the visible area of the list.
: :Max Scalar Specifies the largest value the "Value" property can be
set to. It has however different meaning on each uicontrol:

    + CheckBoxes: Max is the value the "Value" property take when control
      is checked.
    + Sliders: Maximum value of the slider.
    + ListBoxes: if (Max-Min)>1 the list allows multiple selection,
      Otherwise not.

: :Min Scalar Specifies the lowest value the "Value" property can be
set to. It has however different meaning on each uicontrol:

    + CheckBoxes: Min is the value the "Value" property take when control
      is unchecked.
    + Sliders: Minimum value of the slider.
    + ListBoxes: if (Max-Min)>1 the list allows multiple selection,
      Otherwise not.

: :Parent Handle Handle of the uicontrol parent. Changing this
  property allows to move a control from a figure to another.
: :Path This property is no more supported.
: :Position [1,4] real vector or string. This property is used to set
  or get the geometrical configuration of a control. It is a vector [x y
  w h] where the letters stand for the x location of the left bottom
  corner, the y location of the left bottom corner, the width and the
  height of the uicontrol or a character string where each value is
  separated by a "|", ie "x|y|w|h". The units are determined by the
  "Units" property. The width and height values determine the
  orientation of sliders. If width is greater than height, then the
  slider is oriented horizontally, otherwise the slider is oriented
  vertically.
: :Relief flat | groove | raised | ridge | solid | sunken Appearance
of the border of the uicontrol:

    + PushButtons: the default value for "Relief" property is "raised".
    + Edits: the default value for "Relief" property is "sunken".
    + Other styles: the default value for "Relief" property is "flat".

: :SliderStep [1,2] real vector [small big], the small step represents
  the movement achieved when clicking on the slider trough or tapping on
  the keyboard arrows (when the slider has focus); the big step is the
  amount moved when using Ctrl-keyboard-arrows. If the big step is
  omitted, it is defaulted to 1/10 of the scale.
: :String String. This property represents the text appearing in a
  uicontrol (Except for Frame and Slider styles). For tables, the value
  is a string matrix. For ListBoxes and PopupMenus, the value can be a
  vector of string or a string where the items are separated by a "|".
  For Text uicontrols, this string can contain HTML code to format the
  text. For Pushbutton or Text uicontrols, if the text is enclosed
  between two $ (dollar sign), then it will be considered as a LaTeX
  expression, and if it is enclosed between < and >, it will be
  considered as a MathML one. For Image, the value specifies the path of
  the image file. For Table, the value specifies the whole table data:
  `[IGNORED COL1-HEADER...COLN-HEADER;ROW1-HEADER, ROW1COL1-DATA,
  ROW1COLN-DATA;...;ROWM-HEADER, ROWMCOL1-DATA, ROWMCOLN-DATA]`.
: :TooltipString String or String vector This property represents the
  text of the uicontrol tooltip appearing when the mouse is over the
  uicontrol.
: :Style {pushbutton} | radiobutton | checkbox | edit | text | slider
| frame | listbox | popupmenu | image | table Style of the uicontrol.
This property has to be set at creation time and can not be changed
once the uicontrol is created. Here is a short description of each
one:

    + Pushbutton: a rectangular button generally used to run a callback.
    + Radiobutton: a button with to states. RadioButtons are intended to
      be mutually exclusive (Your code must implement mutually exclusive
      behavior).
    + Checkbox: a button with to states (Used for multiple independent
      choices).
    + Edit: an editable string zone.
    + Text: a text control (generally static).
    + Slider: a scale control, that is a scrollbar use to set values
      between in range with the mouse.
    + Frame: a control representing a zone used to group related controls.
    + Listbox: a control representing a list of items that can be
      scrolled. The items can be selected with the mouse.
    + Popupmenu: a button which make a menu appear when clicked.
    + Image: a sub-window where the image specified is displayed.
    + Table: an editable table.

: :Tag String This property is generally used to identify the control.
  It allows to give it a "name". Mainly used in conjunction with
  `findobj()`.
: :Units {points} | pixels | normalized Set the units used to specify
  the "Position" property.
: :Userdata Scilab data This can be used to associate some Scilab
  objects (string,string matrix, matrix mxn) to an uicontrol.
: :Value Scalar or vector Value of the uicontrol. The exact meaning
depends on the style of the uicontrol:

    + CheckBoxes, Radio buttons: value is set to Max (see above) when on
      and Min when off.
    + ListBoxes, PopupMenus: value is a vector of indexes corresponding to
      the indexes of the selected entries in the list. 1 is the first item
      of the list.
    + Sliders: value indicated by the slider bar.
    + Images: value is used to set some image properties `[X-Scale Y-Scale
      X-Shear Y-Shear RotationAngle]`

: :Verticalalignment top | {middle} | bottom Set text vertical
  alignment in the uicontrol. This property has only effect with Text
  and CheckBoxes styles.
: :Visible {on} | off Set the visibility of the uicontrol. If this
  property is set to `"on"` (default), the uicontrol is visible, but if
  this property is set to `"off"`, the uicontrol will not appear in its
  parent figure.
:



Examples
~~~~~~~~


::

    f=`figure`_();
    // create a figure
    h=uicontrol(f,'style','listbox', ...
     'position', [10 10 150 160]);
    // create a listbox
    `set`_(h, 'string', "item 1|item 2|item3");
    // fill the list
    `set`_(h, 'value', [1 3]);
    // select item 1 and 3 in the list
    `close`_(f);
    // close the figure


uicontrol function can be overloaded


::

    // create a mlist
    mymlist = `mlist`_(['objid','A','B'],[],[]);
    
    // overload set / get for objid
    function result=%objid_uicontrol(varargin)
      // res = uicontrol(mymlist,'A');
      obj_tmp   = varargin(1);
      field_tmp = varargin(2);
      `mprintf`_('uicontrol on an object of type %s, field = %s\n', `typeof`_(obj_tmp), field_tmp);
      result = %t;
    endfunction
    
    res = uicontrol(mymlist,'property');


Pushbuttons or Text can have LaTeX or MathML label


::

    // LaTeX
    f=`figure`_();
    h=uicontrol(f,"style","pushbutton","string","$x^2$");
    // MathML
    hh=uicontrol(f,"style","pushbutton","string","<msup><mi>x</mi><mn>2</mn></msup>");
    hh.Position = h.Position + [50, 0, 0, 0];
    // Text
    h=uicontrol(f,"Style","text","string","$\Gamma(s)=\int_0^\infty t^{s-1}\mathrm{e}^{-t}\,\mathrm{d}t$");
    // If it is too little
    h.fontsize=20




See Also
~~~~~~~~


+ `figure`_ create a figure
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `uimenu`_ Create a menu or a submenu in a figure
+ `LaTeX and MathML`_ Display mathematical equations in Scilab
  graphics through the LaTeX or MathML languages.


.. _set: set.html
.. _LaTeX and MathML: math_rendering_features_in_graphic.html
.. _get: get.html
.. _figure: figure.html
.. _uimenu: uimenu.html


