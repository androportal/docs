====
"surface_properties"
====

Scilab Data type Last update : 06/12/2005
**surface_properties** - description of the 3D entities properties



Description
~~~~~~~~~~~

The Surface entity is a leaf of the graphics entities hierarchy. Two
classes appears under this type of entity : **Plot3d** and **Fac3d**
according to the ploting function or the way data is entered.
**Fac3d** and **Plo3d** entities are similar but **Fac3d** is more
complete and accept more options than **Plot3d** . To always have
**Fac3d** entities, simply use **genfac3d** to pre-build matrices
before using **plot3d** or use the **surf** command.

Here are the properties contained in a surface entity:

**parent: **This property contains the handle of the parent. The
  parent of the surface entity should be of type **"Axes"** or
  **"Compound"** .
**children: **This property contains a vector with the **children** of
  the handle. However, surface handles currently do not have any
  **children** .
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** . By default,
  surfaces are visibles, the value's property is **"on"** . If **"off"**
  the 3D graphics are not displayed on the screen.
**surface_mode: **This field contains the default **surface_mode**
  property value for the surface. Its value should be **"on" ** (surface
  drawn) or **"off"** (no surface drawn).
**foreground: **If **color_mode >= 0** , this field contains the color
  index used to draw the edges. If not, foreground is not used at all.
  The foreground value should be an integer color index (relative to the
  current colormap).
**thickness: **This field contains the default **thickness** value of
  the lines used to draw the facets contours. It should be a positive
  integer.
**mark_mode: **This field contains the default **mark_mode** property
  value for the surface. Its value should be **"on"** (marks drawn) or
  **"off"** (no marks drawn).
**mark_style: **The **mark_style** property value is used to select
  the type of mark to use when **mark_mode** property is **"on"** . The
  value should be an integer in [0 14] which stands for: dot, plus,
  cross, star, filled diamond, diamond, triangle up, triangle down,
  diamond plus, circle, asterisk, square, triangle right, triangle left
  and pentagram.
**mark_size_unit: **This field contains the default **mark_size_unit**
  property value. If **mark_size_unit** is set to **"point"** , then the
  **mark_size** value is directly given in points. When
  **mark_size_unit** is set to **"tabulated"** , **mark_size** is
  computed relative to the font size array: therefore, its value should
  be an integer in [0 5] whith stands for 8pt, 10pt, 12pt, 14pt, 18pt
  and 24pt. Note that ` **plot3d** `_ and pure scilab functions use
  **tabulated** mode as default ; when using the ` **surf** `_ (or `
  **plot** `_ for 2D lines) function, the **point** mode is
  automatically enabled.
**mark_size: **The **mark_size** property is used to select the type
  of size of the marks when **mark_mode** property is **"on"** . Its
  value should be an integer between 0 and 5 whith stands for 8pt, 10pt,
  12pt, 14pt, 18pt and 24pt.
**mark_foreground: **This field contains the **mark_foreground**
  property value which is the marks' edge color. Its value should be a
  color index (relative to the current color_map).
**mark_background: **This field contains the **mark_background**
  property value which is the marks' face color. Its value should be a
  color index (relative to the current color_map).
**data: **This field defines a **tlist** data structure of type "3d"
  composed of a row and column indices of each element as the x-, y- and
  z-coordinates contained respectivly in **data.x** , **data.y** and
  **data.z** . The complementary field named **data.color** is available
  in case a real color vector or matrix is specified. If none,
  **data.color** is not listed. The surface is painted according to
  **color_mode ** and **color_flag** properties.
**color_mode: **an integer between **[-size(colormap) ;
  size(colormap)]** defining the color of the facet when **color_flag**
  value is **0** . As stated before, if ** color_mode > 0** , edges are
  drawn using **foreground** color. If **color_mode** is set to **0** ,
  a mesh of the surface is drawn: front faces have no colors. Finally,
  when **color_mode < 0** , front faces are painted with color
  **-color_mode** but no edges are displayed.
**color_flag: **This field is used to specify the algorithm used to
set facets' colors.Not that the rules on **color_mode** ,
**foreground** and **hiddencolor** are still applied to this case.
    **** **color_flag == 0**
        **** All facets are painted using the color index and method defined
          by **color_mode** (see above).


    **** **color_flag == 1**
        **** All facets are painted using one color index per facet
          proportional to **z** . The minimum **z** value is painted using the
          index 1 color while the maximum **z** value is painted using highest
          color index. The edges of the facets can be additionnaly drawn
          depending on the value of **color_mode** (see above).


    **** The 3 remaining cases ( **color_flag** **== 2,3 or 4** ) are only
      available only with **Fac3d** entity. Then, the **data.color** value
      is used to set colors for facets (indices in the current colormap) if
      it exists. If not, the current **color_mode** is used to paint the
      facets.
    **** **color_flag == 2 ('flat' shading)**
        **** All facets are painted using the color index given in the
          **data.color** property (one color per facet is needed). Two cases are
          then possible :
        **** **data.color** contains a **color** vector : if **color(i)** is
          positive it gives the color of facet **i** and the boundary of the
          facet is drawn with current line style and color. If **color(i)** is
          negative, color id **-color(i)** is used and the boundary of the facet
          is not drawn. **data.color** contains a color matrix of size (nf,n)
          where **n** stands for the number of facets and **nf** for the number
          of points defining the polygonal facet. For the **nf** vertices
          defining each facet, the algorithm computes an average value of the
          color index (from the matrix color index) : the **nf** vertices of the
          same facet will have the same color index value.


    **** **color_flag == 3 ('interpolated' shading)**
        **** Facets painting results of interpolation of vertices colors. The
          indices of vertices color are given in the **data.color** property
          (one color per vertex is needed). Two cases are possible :
        **** **data.color** contains a **colors** vector : then, there are too
          few data to complete the interpolated shading mode. Indeed, a color
          matrix of size (nf,n) (where **n** stands for the number of facets and
          **nf** for the number of points defining the polygonal facet) is
          needed to perform this operation. For each facet, the algorithm copies
          the single color index value of the facet into the **nf** color
          indexes vertices defining the facet's boundary. **data.color**
          contains a color matrix of size (nf,n) (see upper for **nf** and **n**
          definitions), the interpolated shading mode can be completed normally
          using those color indexes.


    **** **color_flag == 4 (Matlab-like 'flat' shading)**
        **** Same as **color_flag==2** with a slight difference when
          **data.color** is a matrix. All facets are painted using the color
          index given in the **data.color** property (one color per facet is
          needed). Two cases are then possible :
        **** **data.color** contains a **color** vector : if **color(i)** is
          positive it gives the color of facet **i** and the boundary of the
          facet is drawn with current line style and color. If **color(i)** is
          negative, color id **-color(i)** is used and the boundary of the facet
          is not drawn. **data.color** contains a color matrix of size (nf,n)
          where **n** stands for the number of facets and **nf** for the number
          of points defining the polygonal facet. For the **nf** vertices
          defining each facet, the algorithm takes the color of the first vertex
          defining the patch (facet).




**cdata_mapping: ** **Specific to Fac3d handles** . A string with
  value **'scaled'** or **'direct'** . If a **data.color** is set, each
  index color data specifies a single value for each vertex.
  **cdata_mapping** determines wether those indices are scaled to map
  linearly into the current colormap ( **'scaled'** mode) or point
  directly into this colormap ( **'direct** ' mode). This property is
  usefull when **color_flag** equals **2** , **3** or **4** .
**hiddencolor: **This field contains the color index used to draw the
  backward faces of a surface. Its value should be a positive integer
  (color index relative to the current colormap). If it is a negative
  integer,the same color than the "visible" face is applied to the rear
  face.
**user_data: **This field can be use to store any scilab variable in
  the surface data structure, and to retreive it.




Examples
~~~~~~~~


::

    set("figure_style","new") 
    //create a figure 
    t=[0:0.3:2*%pi]'; z=sin(t)*cos(t');
    [xx,yy,zz]=genfac3d(t,t,z); 
    plot3d([xx xx],[yy yy],list([zz zz+4],[4*ones(1,400) 5*ones(1,400)])) 
    h=get("hdl") //get handle on current entity (here the surface) 
    a=gca(); //get current axes
    a.rotation_angles=[40,70]; 
    a.grid=[1 1 1]; 
    //make grids 
    a.data_bounds=[-6,0,-1;6,6,5];
    a.axes_visible="off"; 
    //axes are hidden a.axes_bounds=[.2 0 1 1]; 
    f=get("current_figure");
    //get the handle of the parent figure 
    f.color_map=hotcolormap(64); 
    //change the figure colormap 
    h.color_flag=1; 
    //color according to z 
    h.color_mode=-2; 
    //remove the facets boundary 
    h.color_flag=2; 
    //color according to given colors 
    h.data.color=[1+modulo(1:400,64),1+modulo(1:400,64)];
    //shaded
    h.color_flag=3; 
    
    scf(2); // creates second window and use surf command
    subplot(211)
    surf(z,'cdata_mapping','direct','facecol','interp')
    
    subplot(212)
    surf(t,t,z,'edgeco','b','marker','d','markersiz',9,'markeredg','red','markerfac','k')
    e=gce();
    e.color_flag=1 // color index proportional to altitude (z coord.)
    e.color_flag=2; // back to default mode
    e.color_flag= 3; // interpolated shading mode (based on blue default color because field data.color is not filled)
    
    




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **delete** `_,` **plot3d** `_,`
**plot3d1** `_,` **plot3d2** `_,` **surf** `_,` **graphics_entities**
`_,



Author
~~~~~~

Djalel ABDEMOUCHE & F.Leray

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/surf.htm
.. _
        : ://./graphics/plot.htm
.. _
      : ://./graphics/plot3d.htm
.. _
      : ://./graphics/plot3d1.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/delete.htm
.. _
      : ://./graphics/plot3d2.htm


