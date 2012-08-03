====
"figure_properties"
====

Scilab Data type Last update : 17/03/2006
**figure_properties** - description of the graphics figure entity
properties



Description
~~~~~~~~~~~

The figure entity is the top level of the graphics entities hierarchy.
This entity contain a number of properties designed to control many
aspects of displaying Scilab graphics objects. These properties fall
into two categories. Properties that contain information about figure
itself and others related to set default values for the children
creation.

**Figure properties: **
    **children: **This handles represent the vector of the figure's
      children . Note that all figure children are of type **"Axes"** . Also
      keep in mind that, when creating a figure entity (using **scf**
      command), an **Axes** entity is simultaneously built too.
    **figure_style: **The value of this field defines the figure style, it
      should be **"old"** or **"new"** . The **"new"** value sets the entity
      based style. The **"old"** value represents the old Scilab graphic
      mode. In this case **figure_style** is the only defined property.
    **figure_position: **This field contains the position in pixel of the
      graphic window on the screen. The size is the vector **[x,y]** . The
      point **[0,0]** if the upper-left corner of the screen.
    **figure_size: **This property controls the size in pixel of the
      screen's graphics window. The size is the vector **[width,height]** .
    **axes_size: **Used to Specifies the size in pixel of the virtual
      graphics window. The size is the vector **[width,height] ** . The
      virtual graphic window should be bigger than the part really visible
      on the screen.
    **auto_resize: **This property determines if graphics window is
      resized. If the value is **"on"** then the **axes_size** property is
      equaled to the **figure_size** and the axes children are zoomed
      accordingly. If the value is **"off"** that indicate that
      **axes_size** cannot be resized when **figure_size** is changed.
    **figure_name: **This field contains the name of the figure. This name
      is a character string displayed at the top of the graphics_window. The
      name can contain a single substring **%d** which will be replaced by
      the **figure_id** . No other instance of the **%** character is
      allowed inside the name.
    **figure_id: **This field contains the identifier of the figure. This
      is an integer number which is set at figure creation and cannot be
      changed after.
    **color_map: **Property which defines the colormap used by this
      figure. The colormap is a **m** by **3** matrix. **m** is the number
      of colors. Color number i is given as a 3-uple **R** , **G** , **B**
      corresponding respectively to red, green and blue intensity between 0
      and 1.
    **pixmap: **This property controls the pixmap status of a Graphic
      Window. If this property value is **"off"** the graphics are directly
      displayed on the screen. If it is **"on"** the graphics are done on a
      pixmap and are sent to the graphics window with the command
      **show_pixmap()** .
    **pixel_drawing_mode: **This field defines the bitwise operation used
      to draw the pixel on the screen. The default mode is **copy** what is
      to say the pixel is drawn as required. More generally the bitwise
      operation is performed between the color of the source pixel and the
      color of the pixel already present on the screen. Operations are :
      **"clear"** , **"and"** , **"andReverse"** , **"copy"** ,
      **"andInverted"** , **"noop"** , **"xor"** , **"or"** , **"nor"** ,
      **"equiv"** , **"invert"** , **"orReverse"** , **"copyInverted"** ,
      **"orInverted"** , **"nand"** , **"set"** ,
    **immediate_drawing: **This property controls the figure display. Its
      value can be **"on"** (default mode) or **"off"** . It is used to
      delay a huge succession of graphics commands (implying several
      drawings or redrawings). Note that, when using **drawlater** or
      **drawnow** commands, it affects the property value of the current
      figure (which is respectively turned to **'off'** or **'on'** ).
    **background: **This property controls the figure window background
      color. It takes as value an index relative to the current colormap.
    **user_data: **This field can be use to store any scilab variable in
      the figure data structure, and to retreive it.




**Children's default values: **
    **visible: **This field ules if the contents of the figure as to be
      redrawn. Its value should be **"on"** or **"off"** .
    **rotation_style: **This field is related to the "3D Rot" button. It
      takes **unary** as value (default) in the aim to rotate only selected
      3D plot. In the other case its value can be **multiple** : all 3D
      plots are rotated.


**Note on default values :**
    ****All these listed properties and fields inherit from default values
      stored in a figure model. These default values can be seen and
      changed. To do so, use the **get("default_figure")** command : it
      returns a graphic handle on the figure model. Note that no graphic
      window is created by this command. The next created figures will
      inherit from this model (see example 2 below).






Examples
~~~~~~~~


::

    
       lines(0) // disables vertical paging 
      //Example 1
       set("figure_style","new") //create a figure and set the figure as the current selected one
       f=get("current_figure") //get the handle of the current figure : 
                                               //if none exists, create a figure and return the corresponding handle
       f.figure_position
       f.figure_size=[200,200]
       f.background=2
       f.children  // man can see that an Axes entity already exists
       delete(f);
       f=gcf(); // macro shortcut <=> f=get("current_figure")
       f.pixmap = "on" // set pixmap status to on
       plot2d() // nothing happens on the screen...
       show_pixmap() // ...display the pixmap on screen
       //Example 2 : default_figure settings
       df=get("default_figure") // get the default values (shortcut is gdf() )
       // Let's change the defaults...
       df.color_map=hotcolormap(128)
       df.background= 110 // set background toa kind of yellow (Note that we are using a color index inside the color_map previously redefined)
       scf(122); // creates new figure number 122 with the new default
       plot2d()
       scf(214);
       t=-%pi:0.3:%pi;
       plot3d(t,t,sin(t)'*cos(t),35,45,'X@Y@Z',[15,2,4]);
         




See Also
~~~~~~~~

` **lines** `_,` **set** `_,` **get** `_,` **scf** `_,` **gcf** `_,`
**gdf** `_,` **gca** `_,` **gda** `_,` **axes_properties** `_,`
**show_pixmap** `_,` **clear_pixmap** `_,,` **hotcolormap** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/hotcolormap.htm
.. _
      : ://./graphics/../fileio/lines.htm
.. _
      : ://./graphics/scf.htm
.. _
      : ://./graphics/gcf.htm
.. _
      : ://./graphics/axes_properties.htm
.. _
      : ://./graphics/clear_pixmap.htm
.. _
      : ://./graphics/gdf.htm
.. _
      : ://./graphics/gca.htm
.. _
      : ://./graphics/gda.htm
.. _
      : ://./graphics/show_pixmap.htm
.. _
      : ://./graphics/get.htm


