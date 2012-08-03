====
"object_editor"
====

Scilab Data type Last update : 05/01/2006
**object_editor ** - description of the graphic object editor
capacities

**graphic ** - description of the graphic object editor capacities

**menus** - description of the graphic object editor capacities



Description
~~~~~~~~~~~

As explained in the **graphics_entities** help file, Scilab graphics
is now based on a brent new graphics mode. This mode allows the user
to have more interaction with graphics before and after having them
drawn. In the **"new"** mode, each graphics window and the drawing it
contains are represented by hierchical entities. The hierachy top
level is the Figure. Each Figure defines at least one child of type
Axes. Each Axes entity contains a set of leaf entities which are the
basic graphics objects like Polylines, Rectangles, Arcs, Segs,... It
can also contain a Compound type which are recursive sets of entities.

The main interest of the new graphic mode is to make property changes
easier. This new graphics'mode provides a set of high-level graphing
routines (see ` **set** `_, ` **get** `_) used to control objects'
properties such as data, coordinates and scaling, color and
appearences without requiring to replay the initial graphics commands.

Graphics entities are associated to Scilab variables of type
**handle** . The handle is a unique identifier which is associated to
each instance of a created graphical entity. Using this handle, it
will be possible to reach entities' properties through "set" and "get"
routines. The handles are also used to manipulate graphics objects, to
move them, to make copies or delete them.

To complete and use the graphics handle capacity at its maximum, a
graphic object editor has been created too. It is a set of Tcl/Tk
interfaces available for each kind of graphics objects (see `
**graphics_entities** `_ for more details) that can be enabled for
each graphic window. To make it work, select the **Edit** menu in the
graphic window. Seven graphics editing operations are available :



**Select figure as current: **Let thisfigure be the current one.
**Redraw figure: **Redraw the content of the graphics window (only
  useful for old_style mode).
**Erase figure: **Erase the content of the graphics window. Its action
  corresponds to a **xbasc** (old graphic style) or **clf** (new graphic
  style) command. The last eight items are specially dedicated to the
  graphic editor :
**Copy object: **Using the mouse, it allows the user to select a 2D
  object (like a curve, a rectangle...) and put it in the clipboard.
  Thus, by a next call to **Paste object** , the object is copied in the
  selected current axes.
**Paste object: **Allow the user to paste a previous object put into
  in the clipboard inside the selected current axes.
**Move object: **Using the mouse, it allows the user to move a 2D
  object (like a curve, a rectangle...) inside the selected current
  axes.
**Delete object: **Using the mouse, it allows the user to pick up a 2D
  object (like a curve, a rectangle...) inside the selected current axes
  and to delete it instantly.
**Figure Properties: **Launch the Tcl/Tk interface for the Figure
  object applied to the figure handle of the graphics window.
**Current Axes Properties: **Launch the Tcl/Tk interface for the Axes
  object applied to the current axes handle of the graphics window.
**Start Entity Picker: **Start an event handler on the graphics window
  to catch the mouse clicks on graphics objects and launch the
  corresponding Tcl/Tk interface. The left mouse-click allows object
  edition and the right click performs a move of the selected object.
  Note that, for now, this feature is applied to 2D objects only.
**Stop Entity Picker: **Stop the action of the Entity Picker by
  terminating the event handler on the graphics window.


Once the graphic interface is enabled (using the **Figure Properties**
or **Current Axes Properties** options), two main areas appear :





**A tree selector: **Placed on the left side of the graphical editor,
  a hierarchical tree selector specifies which object is currently
  edited. It can be used to switch from a graphic object to another
  provided that they are in the same graphic window.






**A notebook: **The second area represents a notebook composed with
  different properties pages (like **Style** , **Data** , **Clipping**
  ...) depending on the selected graphic object. Using this editor, man
  can edit more easily the whole properties set of each graphic object
  (like through the **"set"** and **"get"** commands). Here is an
  example of the axes' notebook displaying axes properties:








See Also
~~~~~~~~

` **graphics_entities** `_,` **set** `_,` **get** `_,` **clf** `_,`
**plot** `_,



Author
~~~~~~

F.Leray INRIA

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/plot.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/clf.htm


