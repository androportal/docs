


figure_properties
=================

description of the graphics figure entity properties



Description
~~~~~~~~~~~

The figure entity is the top level of the graphics entities hierarchy.
This entity contain a number of properties designed to control many
aspects of displaying Scilab graphics objects. These properties fall
into two categories. Properties that contain information about figure
itself and others related to set default values for the children
creation.

:Figure properties:
    :children: This handles represent the vector of the figure's children
      . Note that all figure children are of type `"Axes"`. Also keep in
      mind that, when creating a figure entity (using `scf`_ command), an
      `Axes` entity is simultaneously built too.
    : :figure_style: The value of this field defines the figure style.
      Since Scilab 5.0, old graphic mode has been disable. This property
      will be removed in Scilab 5.4 family.
    : :figure_position: This field contains the position in pixel of the
      graphic window on the screen. This is a vector `[x,y]` defining the
      position of the upper-left corner of the window. The position `[0,0]`
      is the upper-left corner of the screen. The initial position of
      graphic windows is taken from the default figure entity (see `gdf`_).
      The only exception is when default figure `figure_position` value is
      `[-1,-1]`. In this case, the initial position of graphic windows is
      automatically set by the windowing system.
    : :figure_size: This property controls the size in pixel of the
      screen's graphics window. The size is the vector `[width,height]`.
    : :axes_size: Used to Specifies the size in pixel of the virtual
      graphics window. The size is the vector `[width,height]`. The virtual
      graphic window should be bigger than the part really visible on the
      screen. This property could not be modified if the figure is docked
      with other elements.
    : :auto_resize: This property determines if graphics window is
      resized. If the value is `"on"` then the `axes_size` property is
      equaled to the `figure_size` and the axes children are zoomed
      accordingly. If the value is `"off"` that indicate that `axes_size`
      cannot be resized when `figure_size` is changed.
    : :viewport: Postion of the visible part of graphics in the panner.
    : :figure_name: This field contains the name of the figure. This name
      is a character string displayed at the top of the graphics_window. The
      name can contain a single substring `%d` which will be replaced by the
      `figure_id`. No other instance of the `%` character is allowed inside
      the name.
    : :figure_id: This field contains the identifier of the figure. This
      is an integer number which is set at figure creation and cannot be
      changed after.
    : :info_message: This character string set the text displayed in the
      info bar of the graphic window.
    : :color_map: Property which defines the colormap used by this figure.
      The colormap is a `m` by `3` matrix. `m` is the number of colors.
      Color number i is given as a 3-uple `R`, `G`, `B` corresponding
      respectively to red, green and blue intensity between 0 and 1.
    : :pixmap: This property controls the pixmap status of a Graphic
      Window. If this property value is `"off"` the graphics are directly
      displayed on the screen. If it is `"on"` the graphics are done on a
      pixmap and are sent to the graphics window with the command
      `show_pixmap()`.
    : :pixel_drawing_mode: This field specifies the bitwise operation used
      for pixel rendering. The default mode is `copy`. For more details see
      the `pixel drawing mode reference page`_.
    : :anti_aliasing: This property controls the anti-aliasing level used
      to improve graphic quality. If the property is set to "off", anti-
      aliasing is disable. To enable anti-aliasing the property must set to
      either "2x", "4x", "8x" or "16x". In this case, it stands for the
      anti-aliasing level. For example, "16x" is a higher quality level than
      "2x". Specifying a higher anti-aliasing level improves image quality
      but also decreases graphic performances.
    : :immediate_drawing: This property controls the figure display. Its
      value can be `"on"` (default mode) or `"off"`. It is used to delay a
      huge succession of graphics commands (implying several drawings or
      redrawings). Note that, when using `drawlater` or `drawnow` commands,
      it affects the property value of the current figure (which is
      respectively turned to `'off'` or `'on'`).
    : :background: This property controls the figure window background
      color. It takes as value an index relative to the current colormap.
    : :event_handler A character string. The name of the Scilab function
      which is intended to handle the events. Not that setting an empty
      string will disable the event handler. For more information about
      event handler functions see the `event handler functions`_ help.
    : :event_handler_enable Enable or disable the event handler. Its value
      must be either "on" or "off".
    : :user_data: This field can be use to store any scilab variable in
      the figure data structure, and to retreive it.
    : :tag: This field can be use to store a character string generally
      used to identify the control. It allows to give it a "name". Mainly
      used in conjontion with findobj().
    : :resizefcn: This field can be use to store the name of a Scilab
      function as a character string. This Scilab function will be called
      whenever you resize the figure and when the figure is created.
    : :closerequestfcn: This field can be use to store the name of a
      Scilab function as a character string. This Scilab function will be
      called whenever the user tries to close the figure using the top-right
      cross.
    :

:

:Children's default values:
    :visible: This field ules if the contents of the figure as to be
      redrawn. Its value should be `"on"` or `"off"`.
    : :rotation_style: This field is related to the "3D Rot" button. It
      takes `unary` as value (default) in the aim to rotate only selected 3D
      plot. In the other case its value can be `multiple` : all 3D plots are
      rotated.
    :

: :Note on default values :
    : All these listed properties and fields inherit from default values
      stored in a figure model. These default values can be seen and
      changed. To do so, use the `get("default_figure")` command : it
      returns a graphic handle on the figure model. Note that no graphic
      window is created by this command. The next created figures will
      inherit from this model (see example 2 below).
    :

:



Examples
~~~~~~~~


::

    `lines`_(0) // disables vertical paging 
    
    //Example 1
    f=`get`_("current_figure") //get the handle of the current figure : 
                            //if none exists, create a figure and return the corresponding handle
    f.figure_position
    f.figure_size=[200,200]
    f.background=2
    f.children  // man can see that an Axes entity already exists
    `delete`_(f);
    f=`gcf`_(); // macro shortcut <=> f=get("current_figure")
    f.pixmap = "on" // set pixmap status to on
    `plot2d`_() // nothing happens on the screen...
    `show_pixmap`_() // ...display the pixmap on screen
    
    //Example 2 : default_figure settings
    df=`get`_("default_figure") // get the default values (shortcut is gdf() )
    // Let's change the defaults...
    df.color_map=`hotcolormap`_(128)
    df.background= 110 // set background toa kind of yellow (Note that we
                       // are using a color index inside the color_map previously redefined)
    `scf`_(122); // creates new figure number 122 with the new default
    `plot2d`_()
    `scf`_(214);
    t=-%pi:0.3:%pi;
    `plot3d`_(t,t,`sin`_(t)'*`cos`_(t),35,45,'X@Y@Z',[15,2,4]);




See Also
~~~~~~~~


+ `lines`_ rows and columns used for display
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `scf`_ set the current graphic figure (window)
+ `gcf`_ Return handle of current graphic window.
+ `gdf`_ Return handle of default figure.
+ `gca`_ Return handle of current axes.
+ `gda`_ Return handle of default axes.
+ `axes_properties`_ description of the axes entity properties
+ `show_pixmap`_ send the pixmap buffer to the screen This function is
  obsolete.
+ `clear_pixmap`_ erase the pixmap buffer This function is obsolete.
  +
+ `hotcolormap`_ red to yellow colormap
+ `event handler functions`_ Prototype of functions which may be used
  as event handler.




History
~~~~~~~
Version Description 5.4.0 New resizefcn & closerequestfcn properties
introduced.
.. _set: set.html
.. _lines: lines.html
.. _get: get.html
.. _pixel drawing mode reference page: pixel_drawing_mode.html
.. _axes_properties: axes_properties.html
.. _gdf: gdf.html
.. _hotcolormap: hotcolormap.html
.. _event handler functions: eventhandlerfunctions.html
.. _clear_pixmap: clear_pixmap.html
.. _scf: scf.html
.. _show_pixmap: show_pixmap.html
.. _gda: gda.html
.. _gca: gca.html
.. _gcf: gcf.html


