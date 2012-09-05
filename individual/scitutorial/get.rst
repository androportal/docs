


get
===

Retrieve a property value from a graphics entity or an User Interface
object.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    h=get(prop)
    val=get(h,prop)
    val=h.prop




Arguments
~~~~~~~~~

:h handle, the handle of the entity to retrieve a property. `h` can be
  a vector of handles, in which case get returns the property value for
  all objects contained in h. `h` can also be *0* to get the root object
  properties.
: :prop character string name of the property.
: :val value of the property.
:



Description
~~~~~~~~~~~

This routine can be used to retrieve the value of a specified property
from a graphics entity or a GUI object. In this case it is equivalent
to use the dot operator on a handle. For exemple,
`get(h,"background")` is equivalent to `h.background`.

Property names are character strings. To get the list of all existing
properties see `graphics_entities`_ or `uicontrol`_ for User Interface
objects.

`get` function can be also called with only a property as argument. In
this case, the property must be one of the following:

:current_entity or hdl returns a handle on the lastly created (and
  still existent) entity. `get('current_entity')` and `get('hdl')` are
  equivalent to `gce`_.
: :current_figure returns a handle on the current graphic figure.
  `get('current_figure')` is equivalent to `gcf`_.
: :current_axes returns a handle on the current axes entity.
  `get('current_axes')` is equivalent to `gca`_.
: :default_figure returns a handle on the default figure entity.
  `get('default_figure')` is equivalent to `gdf`_.
: :default_axes returns a handle on the default axes entity.
  `get('default_axes')` is equivalent to `gda`_.
: :figures_id returns a row vector containing ids of all opened
  graphic figures. `get('figures_id')` is equivalent to `winsid`_.
:



Examples
~~~~~~~~


::

    // for graphics entities
     `clf`_()
        
    // simple graphics objects  
    `subplot`_(121);
    x=[-.2:0.1:2*%pi]';
    `plot2d`_(x-2,x.^2);
    `subplot`_(122);
    `xrect`_(.2,.7,.5,.2);     
    `xrect`_(.3,.8,.3,.2);
    `xfarc`_(.25,.55,.1,.15,0,64*360);
    `xfarc`_(.55,.55,.1,.15,0,64*360);
    `xstring`_(0.2,.9,"Example <<A CAR>>");
     
    h=get("current_entity") //get the newly object created
    h.font_size=3;
     
    f=get("current_figure") //get the current figure 
    f.figure_size
    f.figure_size=[700 500];
    f.children
    f.children(2).type
    f.children(2).children
    f.children(2).children.children.thickness=4; 
     
    a=get("current_axes") //get the current axes
    a.children.type
    a.children.foreground //get the foreground color of a set of graphics objects
    a.children.foreground=9;
    
    // for  User Interface objects
    h=`uicontrol`_('string', 'Button'); // Opens a window with a  button.
    p=get(h,'position'); // get the geometric aspect of the button
    `disp`_('Button width: ' + `string`_(p(3))); // print the width of the button
    `close`_(); // close figure




See Also
~~~~~~~~


+ `uicontrol`_ create a Graphic User Interface object
+ `root_properties`_ description of the root object properties.
+ `graphics_entities`_ description of the graphics entities data
  structures
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.


.. _uicontrol: uicontrol.html
.. _winsid: winsid.html
.. _gcf: gcf.html
.. _graphics_entities: graphics_entities.html
.. _gce: gce.html
.. _gdf: gdf.html
.. _root_properties: root_properties.html
.. _gda: gda.html
.. _gca: gca.html
.. _set: set.html


