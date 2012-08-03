====
"axes_properties"
====

Scilab Data type Last update : 22/03/2007
**axes_properties** - description of the axes entity properties



Description
~~~~~~~~~~~

The Axes entity is the second level of the graphics entities
hierarchy. This entity defines the parameters allowing the change of
coordinates and the axes drawing as well as the parameters' default
values for the children creation.

**Axes properties**
    **parent: **This field contains the handle of the parent figure.
    **children: **FA vector containing the handles of all graphics objects
      children of the axes These graphics objects are of type **"Compound"**
      , **"Rectangle"** , **"Polyline"** , **"Segs"** , **"Arc"** ,
      **"Grayplot"** ,.. (see ` **Compound_properties** `_, `
      **rectangle_properties** `_, ` **champ_properties** `_, `
      **axis_properties** `_, ` **polyline_properties** `_, `
      **segs_properties** `_, ` **grayplot_properties** `_, `
      **surface_properties** `_, ` **param3d_properties** `_, `
      **fec_properties** `_, ` **text_properties** `_, `
      **legend_properties** `_)
    **visible: **This field contains the **visible** property value for
      axes . Its value should be **"on" ** or **"off"** . By default, axes
      is visible **"on"** in case all "visible" chidren are displayed on the
      screen, If **"off"** the axes and all its chidren are not drawn.
    **axes_visible: **A **1x3** string vector. This property specifies
      whether each axis is drawn or not. Its value should be **"on"** or
      **"off"** for a global setting.To act on a single axis, the syntax is
      **axes_visible(N)** where **N** is **1,2** or **3** corresponding to
      the ** x,y** or **z** axis. The scaling data and if required the grids
      are drawn if the value is **"on"** . Note that when creating a simple
      axes entity using the **gca()** (shorcut for **get"current_axes")** )
      or **gcf()** (shortcut for **get(current_figure)** ) commands, the
      axes visiblibilty is set to **"off"** .
    **axes_reverse: **A **1x3** string vector corresponding to the three
      axes (X,Y,Z). For each axes, the property specifies the direction of
      the incresing values. If **"off"** , the default direction is used. If
      **"on"** , the direction is reverse. It is also possible to use only
      one string, **"on"** or **"off"** , to set simultaneously the three
      data.
    **grid: **The field value is a vector **[x-grid,y-grid,z-grid]** where
      **x-grid** controls a grid drawning for the x-axis and **y-grid,
      z-grid** respecting to the y-axis, z-axis. The default values is
      **-1** grids are not drawn, else the grids are drawn using the color
      given indexed by the grid value.
    **x_location: **Specify the location of the x-axis. The possible
    values are:
        **** **"bottom"** . In this case the x axis is drawn at the bottom of
          the axes rectangle.
        **** **"top"** . In this case the x axis is drawn at the top of the
          axes rectangle.
        **** **"middle"** . In this case the x axis is drawn at the position
          nearest to the 0 y coordinates.


    **y_location: **Specify the location of the y-axis. The possible
    values are:
        **** **"left"** . In this case the y axis is drawn at the left of the
          axes rectangle.
        **** **"right"** . In this case the y axis is drawn at the right of
          the axes rectangle.
        **** **"middle"** . In this case the y axis is drawn at the position
          nearest to the 0 x coordinates.


    **title: **An object attached to the Axes entity and returning a
      graphic handle on a Label structure (see ` **label_properties** `_).
      This field defines a title with options on this label.
    **x_label: **An object attached to the Axes entity and returning a
      graphic handle on a Label structure (see ` **label_properties** `_).
      This field defines a label on x axis with options on this label.
    **y_label: **An object attached to the Axes entity and returning a
      graphic handle on a Label structure (see ` **label_properties** `_).
      This field defines a label on y axis with options on this label.
    **z_label: **An object attached to the Axes entity and returning a
      graphic handle on a Label structure (see ` **label_properties** `_).
      This field defines a label on z axis with options on this label.
    **auto_ticks: **A **1x3** string vector giving the auto_ticks status
      for each axis. This property specifies whether each axis is graduated
      using a computational algorithm or not (graduations are set by the
      user). Its value should be **"on"** or **"off"** for a global
      setting.To act on a single axis, the syntax is **auto_ticks(N)** where
      **N** is **1,2** or **3** corresponding to the **x,y** or **z** axis.
      Note that editing ticks (text and/or locations) via **x_ticks,
      y_ticks** or **z_ticks** automatically set **auto_ticks** to **"off"**
      for the corresponding axes.
    **x_ticks.locations: **A real vector containing the locations for the
      graduations on x axis. This property can be edited specifying a new
      real vector (of the same size). To specify greater or lesser
      graduations, man can act on the **x_ticks** **tlist** defining a
      corresponding ** x_ticks.labels** string vector too.
    **y_ticks.locations: **A real vector containing the locations for the
      graduations on y axis. This property can be edited specifying a new
      real vector (of the same size). To specify greater or lesser
      graduations, man can act on the **y_ticks** **tlist** defining a
      corresponding ** y_ticks.labels** string vector too.
    **z_ticks.locations: **A real vector containing the locations for the
      graduations on z axis. This property can be edited specifying a new
      real vector (of the same size). To specify greater or lesser
      graduations, man can act on the **z_ticks** **tlist** defining a
      corresponding ** z_ticks.labels** string vector too.
    **x_ticks.labels: **A string vector containing the labels for the
      graduations on x axis. This property can be edited specifying a new
      string vector (of the same size). To specify greater or lesser
      graduations, man can act on the **x_ticks** **tlist** defining a
      corresponding ** x_ticks.locations** real vector too.
    **y_ticks.labels: **A string vector containing the labels for the
      graduations on y axis. This property can be edited specifying a new
      string vector (of the same size). To specify greater or lesser
      graduations, man can act on the **y_ticks** **tlist** defining a
      corresponding ** y_ticks.locations** real vector too.
    **z_ticks.labels: **A string vector containing the labels for the
      graduations on z axis. This property can be edited specifying a new
      string vector (of the same size). To specify greater or lesser
      graduations, man can act on the **z_ticks** **tlist** defining a
      corresponding ** z_ticks.locations** real vector too.
    **box: **This property specifies whether to enclose the axes in a box.
      Take as value **"off" ** is to not display the box. The default is
      **"on" ** .
    **sub_ticks: **This field sets the number of tics to draw between two
      main tics. The field value is the vector **[nx,ny]** where **nx** is
      the number of sub tics for the x-axis and **ny** respecting to the
      y-axis.
    **font_style: **Specify the font used for displaying tics labels.
      Seven differents fonts are available : "Courrier", "Symbol", "Times",
      "Times Italic", "Times Bold", "User defined". The **font_style**
      property is an index in [0 6] which is associated to the previous font
      names.
    **font_size: **An integer specifying the font size used to draw the
      tics labels.
    **font_color: **This property determines the color of the tics labels.
    **isoview: **This property is used to have isometric scales on the x,
      y and z axes (for exemple to make the display of the curve sin(x)
      versus cos(x) be a circle not an ellipse). Its value should be
      **"on"** or **"off"** . If the value is **"on"** , the axes
      **data_bounds** automatically change according to the corresponding
      figure **figure_size** property values.
    **cube_scaling:**This property is used in **3d mode** to have a
      rescaling of the x, y and z axes. Indeed, it allows the **data** to
      fit into a 1x1x1 cube ; the goal is to better display 3d graphics in
      case axes scales are very different from one to another. Its value
      should be **"on" ** or **"off"** (which is the default value). In most
      cases, it helps generating Matlab-like 3d view.
    **view: **This field is related to the graphics universe. It takes
      **"3d"** as value corresponding to the three-dimensional views. In the
      other case its value can be **"2d"** for initial 2d plotting (default
      value). This flag also depends on the plots the user enters : a
      **plot3d ** command, for example, will switch the **view** flag from
      **"2d"** to **"3d"** .
    **rotation_angles: **This field is the vector **[alpha,theta]** .
      These two values give the spherical coordinates of the observation
      points (in degree).
    **log_flags: ** 3 character string that sets the scale (linear or
      logarithmic) along the axes. Each character speficfies the scale for
      respectivgly the X, Y and Z axes. They should take a value between
      **'n'** for linear scale or **'l'** for logarithmic scale.
    **tight_limits: **If this property value is **"on"** axes adapt to fit
      exactly with the minima and maxima values of the **data_bounds** . If
      this field value is **"off"** , axes may enlarge boundaries such as to
      produce pretty tics labels.
    **data_bounds: **This field contains the boundary values for the x,y
      and z coordinates. It is the matrix
      **[xmin,ymin,zmin;xmax,ymax,zmax]** or **[xmin,ymin;xmax,ymax]** .
      Note that, to stricly have the specified data bounds, **tight_limits**
      must be set to **"on"** value (see above).
    **zoom_box: **This field contains the current zoom box if any
      coordinates are given. It is an empty matrix (no zoom) or the vector
      **[xmin,ymin,xmax,ymax]** (defines a rectangle given by two opposite
      corners). The z coordinates is not yet taken into account.
    **margins: **A vector
      **[margin_left,margin_right,margin_top,margin_bottom]** specifying the
      margins portion for this axes. This vector is composed of numbers
      between [0 1] with default: [0.125 0.125 0.125 0.125] (these numbers
      are ratio relatives to the corresponding figure **figure_size**
      property values).
    **axes_bounds: **A vector **[x_left,y_up,width,height]** specifying
      the portion of figure used by this axes. Where **x_left** , **y_up** ,
      **width** and **height** are numbers in [0 1] give respectively the
      position of the upper-left corner and the dimension of the axes (these
      numbers are ratio relative to the corresponding figure **figure_size**
      property values).
    **user_data: **This field can be use to store any scilab variable in
      the axes data structure, and to retreive it.


**Properties for high level functions** The **plot** , **plot2dx** ,
**grayplot** and **matplot** functions use the following properties to
decide how to merge consecutive plots if this is not stated by the
**frameflag** calling argument. The result of the merge is decided
through these two following properties:
    **auto_clear: **If this property value is equal to **"on"** , a call
      to a high level graphic will re-ininitialize the current axes and
      erase all its children before preforming the drawing. If the value is
      **"off"** the drawings will be added to current axes according to
      **"auto_scale"** property.
    **auto_scale: **A property to update the axes data boundary. If value
      is **"on"** , a new plot will adapt the current axes properties to fit
      with previous and current plots. If its value is **"off"** the new
      plot will be drawn in the current axes data boundary.


**Children's default values: **
    **hiddencolor: **This property controls the hidden parts' color. It
      takes as value an index relative to the current colormap. In another
      case, if it is a negative value, the hidden parts take the same colors
      as the surface
    **line_mode: **This field contains the default **line_mode** property
      value for Segs Rectangle Legend Axis Plot3d Fac3d and Polyline
      objects. Its value should be **"on" ** (default) or **"off"** .
    **line_style: **This field contains the default **line_style**
      property value for Segs, Arcs, Rectangle and Polyline objects.
      **line_style** selects the type of line to be used to draw lines . Its
      value should be an integer in [0 6]. 0 and 1 stand for solid, the
      other values stand for a selection of dashes (see ` **getlinestyle**
      `_).
    **thickness: **This field contains the default **thickness** property
      value for all objects using line drawing. Its value should be positive
      integer.
    **mark_mode: **This field contains the default **mark_mode** property
      value for Segs Rectangle Legend Axis Plot3d Fac3d and Polyline
      objects. Its value should be **"on" ** or **"off"** (default).
    **mark_style: **This field contains the default **mark_style**
      property value for Segs Rectangle Legend Axis Plot3d Fac3d and
      Polyline objects. **mark_style** selects the type of mark to be
      displayed. Its value should be an integer in [0 9] which stands for:
      dot, plus, cross, star, filled diamond, diamond, triangle up, triangle
      down, trefle and circle.
    **mark_size_unit: **This field contains the default **mark_size_unit**
      property value for Segs Rectangle Legend Axis Plot3d Fac3d and
      Polyline objects. If **mark_size_unit** is set to **"point"** , then
      the **mark_size** value is directly given in points. When
      **mark_size_unit** is set to **"tabulated"** , **mark_size** is
      computed relative to the font size array: therefore, its value should
      be an integer in [0 5] whith stands for 8pt, 10pt, 12pt, 14pt, 18pt
      and 24pt. Note that ` **plot2d** `_ and pure scilab functions use
      **tabulated** mode as default ; when using ` **plot** `_ function, the
      **point** mode is automatically enabled.
    **mark_size: **This field contains the default **mark_size** property
      value for Segs Rectangle Legend Axis Plot3d Fac3d and Polyline
      objects. **mark_size** selects the font size of mark to be displayed.
      Its value should be an integer in [0 5] whith stands for 8pt, 10pt,
      12pt, 14pt, 18pt and 24pt (see ` **getmark** `_).
    **mark_foreground: **This field contains the default
      **mark_foreground** property value for all objects created under this
      axes. Polyline, rectangle, legend, surface, segment and axis objects
      are using this property to specify a foreground (edge) color for their
      marks. Its value should be a color index (relative to the current
      color_map). Note that the default value is **-1** (default black) and,
      even if you change the **color_map** , this **-1** value will always
      point onto the default black color.
    **mark_background: **This property controls the default
      **mark_background** property value for all objects created under this
      axes. Polyline, rectangle, legend, surface, segment and axis objects
      are using this property to specify a background (face) color for their
      marks. It takes as value an index relative to the current
      colormap.Note that the default value is **-2** (default white) and,
      even if you change the **color_map** , this **-2** value will always
      point onto the default white color.
    **foreground: **This field contains the default **foreground**
      property value for axes and all objects created under this axes. Its
      value should be a color index (relative to the current color_map).
      Note that the default value is **-1** (default black) and, even if you
      change the **color_map** , this **-1** value will always point onto
      the default black color.
    **background: **This property controls the default **background**
      property value for axes and all objects created under this axes. It
      takes as value an index relative to the current colormap.Note that the
      default value is **-2** (default white) and, even if you change the
      **color_map** , this **-2** value will always point onto the default
      white color.
    **clip_state: **This field contains the default **clip_state**
    property value for all objects. Its value should be :
        **** **"off"** this means that all objects created after that are not
          clipped (default value).
        **** **"clipgrf"** this means that all objects created after that are
          clipped outside the Axes boundaries.
        **** **"on"** this means that all objects created after that are
          clipped outside the rectangle given by property clip_box.


    **clip_box: **This field contains the default **clip_box** property
      value for all objects. Its value should be an empty matrix if
      clip_state is **"off"** . Other case the clipping is given by the
      vector **[x,y,w,h]** (upper-left point width height).
    **Note on default values :**
        ****All these listed properties and fields inherit from default values
          stored in an axes model. These default values can be seen and changed.
          To do so, use the **get("default_axes")** command : it returns a
          graphic handle on the axes model. Note that no graphic window is
          created by this command. The next created axes will inherit from this
          model (see "Example on axes model" below).








Examples
~~~~~~~~


::

      
       lines(0) // disables vertical paging 
       set("figure_style","new") //create a figure
       a=get("current_axes")//get the handle of the newly created axes
       a.axes_visible="on"; // makes the axes visible
       a.font_size=3; //set the tics label font size
       a.x_location="top"; //set the x axis position
       a.data_bounds=[-100,-2,-1;100,2,1]; //set the boundary values for the x, y and z coordinates.
       a.sub_tics=[5,0];
       a.labels_font_color=5;
       a.grid=[2,2];
       a.box="off";
    
       // Example with 3D axes
       clf(); //clear the graphics window
       x=0.1:0.1:2*%pi;plot2d(x-.3,sin(x)*7+.2);
       a=gca(); // get the handle of the current axes
       a.grid=[1 -1 -1]; //make x-grid
       a.rotation_angles=[70 250]; //turn the axes with giving angles
       a.grid=[1 6 -1]; //make y-grid
       a.view="2d"; //return te the 2d view
       a.box="off"; 
       a.labels_font_color=5;
       a.children.children.thickness=4;
       a.children.children.polyline_style=3;
       a.view="3d"; //return te the 3d view
       a.children.children.thickness=1;
       a.children.children.foreground=2;
       a.grid=[1 6 3]; //make z-grid
       a.parent.background=4;
       a.background=7;
       plot2d(cos(x)+1,3*sin(x)-3);
       plot2d(cos(x)+7,3*sin(x)+3);
       a.children(2).children.polyline_style=2;
       a.children(1).children.polyline_style=4;
       a.children(1).children.foreground=5;
       a.children(2).children.foreground=14;
       a.parent.figure_size= [1200,800];
       a.box="on";
       a.labels_font_size=4;
       a.parent.background=8;
       a.parent.figure_size= [400,200];
       a.rotation_angles=[0 260];
       delete(a.children(2)); 
       delete(); // delete current object
       
       a.labels_font_size=1;
       a.auto_clear= "on";
       x=0:0.1:2.5*%pi;plot2d(10*cos(x),sin(x));
    
       a.data_bounds(:,1) = [1;15] ; // set positive bounds for X axe
       a.log_flags = "lnn" ; // set X axes to logarithmic scale
       a.log_flags = "nnn" ; // switch back to linear scale
    
       a=gca(); 
       a.rotation_angles=[45 45];
       a.data_bounds=[-20,-3,-2;20 3 ,2];
       xrect([-4 0.5 8 1]);
       a.auto_clear = "off" ;
       a.isoview="on"; // isoview mode
       xrect([-2 0.25 4 0.5]);
       a.children(1).fill_mode="on";
       a.axes_visible="off";
       a.children(1).data=[-2 0.25 -1 4 0.5];
       a.children(2).data=[-4 0.5 1 8 1];
       x=2*%pi*(0:7)/8;
       xv=[.2*sin(x);.9*sin(x)];yv=[.2*cos(x);.9*cos(x)];
       xsegs(10*xv,yv,1:8)
       s=a.children(1);
       s.arrow_size=1;
       s.segs_color=5;
       a.data_bounds //the boundary values for the x,y and z coordinates
       a.view="2d";
       a.data_bounds=[-10,-1; 10,1]; // set the boundary values for the two-dimensional views
       
       // Example on axes model
       da=gda() // get the handle on axes model to view and edit the fields
       // title by default
       da.title.text="My Default@Title"
       da.title.foreground = 12;
       da.title.font_size = 4;
       // x labels default
       da.x_label.text="x";
       da.x_label.font_style = 8;
       da.x_label.font_size = 2;
       da.x_label.foreground = 5;
       da.x_location = "middle";
       // y labels default
       da.y_label.text="y";
       da.y_label.font_style = 3;
       da.y_label.font_size = 5;
       da.y_label.foreground = 3;
       da.y_location = "right";
       da.thickness = 2;
       da.foreground = 7;
       // the plot
       x=(0:0.1:2*%pi)';
       plot2d(x,[sin(x),sin(2*x),sin(3*x)],style=[1,2,3],rect=[0,-2,2*%pi,2]);
       sda() // back to default axes model
    
     




See Also
~~~~~~~~

` **lines** `_,` **set** `_,` **get** `_,` **gca** `_,` **gda** `_,`
**gcf** `_,` **sda** `_,` **sdf** `_,` **scf** `_,`
**graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
            : ://./graphics/compound_properties.htm
.. _
      : ://./graphics/scf.htm
.. _
            : ://./graphics/rectangle_properties.htm
.. _
      : ://./graphics/../fileio/lines.htm
.. _
      : ://./graphics/get.htm
.. _
            : ://./graphics/champ_properties.htm
.. _
            : ://./graphics/surface_properties.htm
.. _
      : ://./graphics/set.htm
.. _
            : ://./graphics/plot2d.htm
.. _
      : ://./graphics/sda.htm
.. _
            : ://./graphics/legend_properties.htm
.. _
            : ://./graphics/plot.htm
.. _
            : ://./graphics/getmark.htm
.. _
            : ://./graphics/param3d_properties.htm
.. _
            : ://./graphics/grayplot_properties.htm
.. _
            : ://./graphics/label_properties.htm
.. _
      : ://./graphics/gcf.htm
.. _
      : ://./graphics/gda.htm
.. _
            : ://./graphics/axis_properties.htm
.. _
            : ://./graphics/fec_properties.htm
.. _
            : ://./graphics/segs_properties.htm
.. _
            : ://./graphics/getlinestyle.htm
.. _
      : ://./graphics/gca.htm
.. _
      : ://./graphics/sdf.htm
.. _
            : ://./graphics/polyline_properties.htm
.. _
            : ://./graphics/text_properties.htm


