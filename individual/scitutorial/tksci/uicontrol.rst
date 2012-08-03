====
"uicontrol"
====

Scilab Function Last update : 03/11/2006
**uicontrol** - create a Graphic User Interface object



Calling Sequence
~~~~~~~~~~~~~~~~

h = uicontrol('PropertyName',PropertyValue,...) h =
  uicontrol(parent,'PropertyName',PropertyValue,...) h=uicontrol(uich)




Description
~~~~~~~~~~~

this routine creates an object in a figure. If the handle of the
figure is given (as the first parameter), the uicontrol is created in
this figure. If no handle is given, the uicontrol is created in the
current figure ( which may be obtained with a call to gcf() ). If
there is no current figure, then one is created before the creation of
the uicontrol. Then when the control is created, the properties given
as parameters are set with the coresponding values. It is equivalent
to create the uicontrol, and then set its properties with the set()
command. Nevertheless, it generally more efficient to set the
properties in the call to uicontrol(). This is particularly true
coincerning the 'style' field. Indeed, the default value for this
property is 'pushbutton'. So if you do not set it at creation time, a
button will be created, and will be transformed to another uicontrol
when you call the get(h,'style', ... ) instruction. Scilab and all the
graphic objects communicate through the property mechanism. Thus, to
create adapted uicontrol, one has to know the use of the property
fields.

h = uicontrol('PropertyName',PropertyValue,...) creates a uicontrol
and assigns the specified properties and values to it. It assigns the
default values to any properties you do not specify. The default
uicontrol style is a pushbutton. The default parent is the current
figure. See Properties for information about these and other
properties.

h = uicontrol(parent,'PropertyName',PropertyValue,...) creates a
uicontrol in the object specified by the handle, parent. If you also
specify a different value for the Parent property, the value of the
Parent property takes precedence. parent is the handle of a figure.

h=uicontrol(uich) gives focus to the uicontrol specified by the
handle, uich.

Those are described under:



Properties
~~~~~~~~~~


