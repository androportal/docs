


graphics_entities
=================

description of the graphics entities data structures



Description
~~~~~~~~~~~

In Scilab, graphics window and the drawing it contains are represented
by hierchical entities. The hierarchy top level is the Figure. Each
Figure defines at least one child of type Axes. Each Axes entity
contains a set of leaf entities which are the basic graphics objects
like Polylines, Rectangles, Arcs, Segs,... It can also contain an
Compound type which are recursive sets of entities. The main interest
of the graphic mode is to make property change easier. This
graphics'mode provides a set of high-level graphing routines (see
`set`_, `get`_) used to control objects' properties such as data,
coordinates and scaling, color and appearences without requiring to
replay the initial graphics commands.

Graphics entities are associated to Scilab variables of type `handle`.
The handle is a unique identifier which is associated to each instance
of a created graphical entity. Using this handle, it will be possible
to reach entities' properties through "set" and "get" routines. The
handles are also used to manipulate graphics objects, to move them, to
make copies or delete them.



:Figure: The figure entity is the top level of the graphics entities
  hierarchy. This entity defines the parameters for the figure itself as
  well as the parameters' default values for the children creation. The
  figure children are the Axes entities. The handle on the current
  figure (the figure used where the drawing are sent) may be got using
  `get("current_figure")` and it may be set using
  `set("current_figure",h)`, where `h` is either a handle on a figure or
  a `figure_id` in this last case if the figure does not already exists
  , it is created See `figure_properties`_ for details.
: :Axes: The Axes entity is the second level of the graphics entities
  hierarchy. This entity defines the parameters for the change of
  coordinates and the axes drawing as well as the parameters' default
  values for its children creation. See `axes_properties`_ for details.
  The handle on the current Axes may be got using `get("current_axes")`.
: :Compound: The Compound entity is just a vector of children and with
  a single property (visibility property). It is used to glue a set of
  entities together. See `glue`_, `unglue`_ and `Compound_properties`_
  functions.
: :Axis: The Axis entity is a leaf of the graphics entities hierarchy.
  This entity defines the parameters for axis scaling and appearance.
  See `axis_properties`_ for details.
: :Polyline: The polyline entity is a leaf of the graphics entities
  hierarchy. It defines 2D and 3D polylines and polylines extensions
  drawing properties. See `polyline_properties`_ for details.
: :Arc: The Arc entity is a leaf of the graphics entities hierarchy.
  This entity defines the parameters for ellipses and part of ellipses.
  See `arc_properties`_ for details.
: :Rectangle: The Rectangle entity is a leaf of the graphics entities
  hierarchy. This entity defines the parameters for rectangles and
  filled rectangles. See `rectangle_properties`_ for details.
: :Surface: The Surface entity is a leaf of the graphics entities
  hierarchy. It has sub types `Fac3d` or `Plot3d`. This entity defines
  the parameters for 3d surface plots. See `surface_properties`_ for
  details.
: :Fec: The Fec entity is a leaf of the graphics entities hierarchy.
  It represents 2D finite elements plots . See `fec_properties`_ for
  details.
: :Grayplot: The Grayplot entity is a leaf of the graphics entities
  hierarchy. It represents 2D plots of surface using colors and images.
  See `grayplot_properties`_ for details.
: :Matplot: The Matplot entity is a leaf of the graphics entities
  hierarchy. It represents 2D plots using integer matrices. See
  `Matplot_properties`_ for details.
: :Segs: The Segs entity is a leaf of the graphics entities hierarchy.
  This entity defines the parameters for a set of colored segments or
  colored arrows. See `segs_properties`_ for details.
: :Champ: The Champ entity is a leaf of the graphics entities
  hierarchy. This entity defines the parameters for a 2D vector field.
  See `champ_properties`_ for details.
: :Text: The Text entity is a leaf of the graphics entities hierarchy.
  This entity defines the parameters for string drawing. See
  `text_properties`_ for details.
: :Label: The Labels entity are children of the `Axes` graphics
  entity. This entity defines the parameters for the 3 x,y and z labels
  and title drawn on a graphics window. See `label_properties`_ for
  details.
: :Legend: The Legend entity is a leaf of the graphics entities
  hierarchy. This entity defines the parameters for legends drawn below
  `plot2dx` graphs. This entity requires further developments. See
  `legend_properties`_ for details.
:



Examples
~~~~~~~~


::

    //Play this example line per line
    
    `scf`_() //create a figure in entity mode
    
    //get the handle on the Figure entity and display its properties
    f=`get`_("current_figure") 
    a=f.children // the handle on the Axes child
    x=(1:10)';  `plot2d`_(x,[x.^2 x.^1.5])
    e=a.children //Compound of 2 polylines
    
    p1=e.children(1) //the last drawn polyline properties
    p1.foreground=5;  // change the polyline color
    e.children.thickness=5; // change the thickness of the two polylines
    
    `delete`_(e.children(2))
    
    `move`_(e.children,[0,30]) //translate the polyline
    
    a.axes_bounds=[0 0 0.5 0.5]; 
    
    `subplot`_(222) //create a new Axes entity
    `plot`_(1:10);
    a1=f.children(1); //get its handle
    `copy`_(e.children,a1); //copy the polyline of the first plot in the new Axes
    a1.data_bounds=[1 0;10 100]; //change the Axes bounds  
    
    `set`_("current_figure",10) //create a new figure with figure_id=10
    `plot3d`_() //the drawing are sent to figure 10
    `set`_("current_figure",f) //make the previous figure the current one
    `plot2d`_(x,x^3)  //the drawing are sent to the initial figure




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `move`_ move, translate, a graphic entity and its children.
+ `draw`_ draw an entity. This function is obsolete.
+ `delete`_ delete a graphic entity and its children.
+ `object_editor`_ description of the graphic object editor capacities
+ `plot`_ 2D plot
+ `surf`_ 3D surface plot


.. _get: get.html
.. _segs_properties: segs_properties.html
.. _surf: surf.html
.. _object_editor: object_editor.html
.. _grayplot_properties: grayplot_properties.html
.. _figure_properties: figure_properties.html
.. _move: move.html
.. _glue: glue.html
.. _unglue: unglue.html
.. _polyline_properties: polyline_properties.html
.. _label_properties: label_properties.html
.. _set: set.html
.. _arc_properties: arc_properties.html
.. _Compound_properties: Compound_properties.html
.. _fec_properties: fec_properties.html
.. _Matplot_properties: Matplot_properties.html
.. _surface_properties: surface_properties.html
.. _champ_properties: champ_properties.html
.. _axis_properties: axis_properties.html
.. _draw: draw.html
.. _rectangle_properties: rectangle_properties.html
.. _text_properties: text_properties.html
.. _delete: delete.html
.. _axes_properties: axes_properties.html
.. _plot: plot.html
.. _legend_properties: legend_properties.html


