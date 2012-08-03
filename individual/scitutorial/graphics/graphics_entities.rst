====
"graphics_entities"
====

Scilab Data type Last update : 13/12/2005
**graphics_entities** - description of the graphics entities data
structures

**new graphics ** - description of the graphics entities data
structures

**figure_style ** - description of the graphics entities data
structures

**old_style ** - description of the graphics entities data structures



Description
~~~~~~~~~~~

Scilab graphics is based on two differents modes. In the **"old"**
mode, the graphics functions are stored to enable redisplay, zoom and
rotations. In the **"new"** mode, each graphics window and the drawing
it contains are represented by hierchical entities. The hierachy top
level is the Figure. Each Figure defines at least one child of type
Axes. Each Axes entity contains a set of leaf entities which are the
basic graphics objects like Polylines, Rectangles, Arcs, Segs,... It
can also contain an Compound type which are recursive sets of
entities. The main interest of the new graphic mode is to make
property change easier. This new graphics'mode provides a set of high-
level graphing routines (see ` **set** `_, ` **get** `_) used to
control objects' properties such as data, coordinates and scaling,
color and appearences without requiring to replay the initial graphics
commands.

Graphics entities are associated to Scilab variables of type
**handle** . The handle is a unique identifier which is associated to
each instance of a created graphical entity. Using this handle, it
will be possible to reach entities' properties through "set" and "get"
routines. The handles are also used to manipulate graphics objects, to
move them, to make copies or delete them.



To set the current graphics window mode we can use these following
instructions: **set("figure_style","new") ** to have a graphics window
under the "new" mode or **set("figure_style","old ")** for the "old"
mode.

The instructions **set("old_style","off")** and
**set("old_style","on")** are used to set the default mode to be used
when a new graphics window is created.



**Figure: **The figure entity is the top level of the graphics
entities hierarchy. This entity defines the parameters for the figure
itself as well as the parameters' default values for the children
creation. The figure children are the Axes entities.The handle on the
current figure (the figure used where the drawing are sent) may be got
using **get("current_figure")** and it may be set using
**set("current_figure",h)** , where **h** is either a handle on a
figure or a **figure_id** in this last case if the figure does not
already exists , it is created See ` **figure_properties** `_ for
details.
    ****


**Axes: ** The Axes entity is the second level of the graphics
entities hierarchy. This entity defines the parameters for the change
of coordinates and the axes drawing as well as the parameters' default
values for its children creation. See ` **axes_properties** `_ for
details. The handle on the current Axes may be got using
**get("current_axes")** .
    ****


**Compound: **The Compound entity is just a vector of children and
with a single property (visibility property). It is used to glue a set
of entities together.See ` **glue** `_, ` **unglue** `_ and `
**Compound_properties** `_ functions.
    ****


**Axis: **The Axis entity is a leaf of the graphics entities
hierarchy. This entity defines the parameters for axis scaling and
appearance.See ` **axis_properties** `_ for details.
    ****


**Polyline: **The polyline entity is a leaf of the graphics entities
hierarchy. It defines 2D and 3D polylines and polylines extensions
drawing properties.See ` **polyline_properties** `_ for details.
    ****


**Arc: **The Arc entity is a leaf of the graphics entities hierarchy.
This entity defines the parameters for ellipses and part of
ellipses.See ` **arc_properties** `_ for details.
    ****


**Rectangle: **The Rectangle entity is a leaf of the graphics entities
hierarchy. This entity defines the parameters for rectangles and
filled rectangles.See ` **rectangle_properties** `_ for details.
    ****


**Surface: **The Surface entity is a leaf of the graphics entities
hierarchy. It has sub types **Fac3d** or **Plot3d** . This entity
defines the parameters for 3d surface plots.See `
**surface_properties** `_ for details.
    ****


**Fec: **The Fec entity is a leaf of the graphics entities hierarchy.
It represents 2D finite elements plots .See ` **fec_properties** `_
for details.
    ****


**Grayplot: **The Grayplot entity is a leaf of the graphics entities
hierarchy. It represents 2D plots of surface using colors and
images.See ` **grayplot_properties** `_ for details.
    ****


**Matplot: **The Matplot entity is a leaf of the graphics entities
hierarchy. It represents 2D plots using integer matrices.See `
**Matplot_properties** `_ for details.
    ****


**Segs: **The Segs entity is a leaf of the graphics entities
hierarchy. This entity defines the parameters for a set of colored
segments or colored arrows.See ` **segs_properties** `_ for details.
    ****


**Champ: **The Champ entity is a leaf of the graphics entities
hierarchy. This entity defines the parameters for a 2D vector
field.See ` **champ_properties** `_ for details.
    ****


**Text: **The Text entity is a leaf of the graphics entities
hierarchy. This entity defines the parameters for string drawing.See `
**text_properties** `_ for details.
    ****


**Label: **The Labels entity are children of the **Axes** graphics
entity. This entity defines the parameters for the 3 x,y and z labels
and title drawn on a graphics window.See ` **label_properties** `_ for
details.
    ****


**Legend: **The Legend entity is a leaf of the graphics entities
hierarchy. This entity defines the parameters for legends drawn below
**plot2dx** graphs. This entity requires further developments.See `
**legend_properties** `_ for details.
    ****






Examples
~~~~~~~~


::

    
    
    
      //Play this example line per line
    
      set("figure_style","new") //create a figure in entity mode
    
      //get the handle on the Figure entity and display its properties
      f=get("current_figure") 
      a=f.children // the handle on the Axes child
      x=(1:10)';  plot2d(x,[x.^2 x.^1.5])
      e=a.children //Compound of 2 polylines
    
      p1=e.children(1) //the last drawn polyline properties
      p1.foreground=5;  // change the polyline color
      e.children.thickness=5; // change the thickness of the two polylines
    
      delete(e.children(2))
    
      move(e.children,[0,30]) //translate the polyline
    
      a.axes_bounds=[0 0 0.5 0.5]; 
    
      subplot(222) //create a new Axes entity
      plot(1:10);
      a1=f.children(1); //get its handle
      copy(e.children,a1); //copy the polyline of the first plot in the new Axes
      a1.data_bounds=[1 0;10 100]; //change the Axes bounds  
    
      set("current_figure",10) //create a new figure with figure_id=10
      plot3d() //the drawing are sent to figure 10
      set("current_figure",f) //make the previous figure the current one
      plot2d(x,x^3)  //the drawing are sent to the initial figure
    
     
      




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **move** `_,` **draw** `_,` **delete**
`_,` **object_editor** `_,` **plot** `_,` **surf** `_,

.. _
          : ://./graphics/compound_properties.htm
.. _
          : ://./graphics/rectangle_properties.htm
.. _
          : ://./graphics/fec_properties.htm
.. _
      : ://./graphics/get.htm
.. _
          : ://./graphics/champ_properties.htm
.. _
          : ://./graphics/surface_properties.htm
.. _
      : ://./graphics/move.htm
.. _
      : ://./graphics/set.htm
.. _
          : ://./graphics/axes_properties.htm
.. _
      : ://./graphics/draw.htm
.. _
          : ://./graphics/arc_properties.htm
.. _
          : ://./graphics/figure_properties.htm
.. _
          : ://./graphics/glue.htm
.. _
          : ://./graphics/grayplot_properties.htm
.. _
          : ://./graphics/label_properties.htm
.. _
      : ://./graphics/surf.htm
.. _
          : ://./graphics/Matplot_properties.htm
.. _
      : ://./graphics/delete.htm
.. _
          : ://./graphics/axis_properties.htm
.. _
          : ://./graphics/segs_properties.htm
.. _
      : ://./graphics/plot.htm
.. _
          : ://./graphics/legend_properties.htm
.. _
          : ://./graphics/polyline_properties.htm
.. _
          : ://./graphics/text_properties.htm
.. _
          : ://./graphics/unglue.htm
.. _
      : ://./graphics/object_editor.htm


