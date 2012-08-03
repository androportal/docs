====
"grayplot_properties"
====

Scilab Data type Last update : 06/12/2005
**grayplot_properties** - description of the grayplot entities
properties



Description
~~~~~~~~~~~

The Grayplot entity is a leaf of the graphics entities hierarchy. It
represents 2D plots of surface using colors and images (see
**grayplot** , **Sgrayplot** , **fgrayplot** and **Sfgrayplot** ).

**parent: **This property contains the handle of the parent. The
  parent of the grayplot entity should be of the type **"Axes"** .
**children: **This property contains a vector with the **children** of
  the handle. However, **grayplot** handles currently do not have any
  **children** .
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** . By default, the
  plot is visible, the value's property is **"on"** . If **"off"** the
  plot is not drawn on the screen.
**data: **This field defines a **tlist** data structure of type
  **"grayplotdata"** composed of a row and column indices of each
  element : the x and y grid coordinates are contained respectively in
  **data.x** and **data.y** . The complementary field named **data.z**
  is the value of the surface at the point **(x(i),y(j))** (scaled mode)
  or the centered value of the surface defined between two consecutive
  **x(i)** and **y(j)** (direct mode). If **data_mapping** (see below)
  is set to **"scaled"** , the entire z data is used to perform a color
  interpolation whereas, if **data_mapping** 's value is **"direct"** ,
  the last line and column of the z data indices are ignored and the
  color is determined directly in the colormap by the indices of the
  submatrix **data.z(1:$-1,1:$-1)** .
**data_mapping: **By default the value of this property is
  **"scaled"** : the indices of painting colors are proportional to the
  value **z** coordinates. In the other case, the property takes as
  value **"direct"** where the plot is a grayplot and the indices of
  painting colors are given by the data (see above).
**user_data: **This field can be use to store any scilab variable in
  the grayplot data structure, and to retreive it.




Examples
~~~~~~~~


::

    
    
       set("figure_style","new") //create a figure
    
    
       m=5;n=5;
       M=round(32*rand(m,n));
       grayplot(1:m,1:n,M)
    
       a=get("current_axes");
       a.data_bounds=  [-1,-1;7,7]
       h=a.children
    
       h.data_mapping="direct";
       
       // A 2D ploting of a matrix using colors 
       xbasc()
       a=get("current_axes");
       a.data_bounds=  [0,0;4,4];
      
       b=5*ones(11,11); b(2:10,2:10)=4; b(5:7,5:7)=2;
       Matplot1(b,[1,1,3,3])  ;
      
       h=a.children
       for i=1:7
        xclick(); // click the mouse to sets Matplot data
        h.data=h.data+4;
       end
       
    
     
      




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **delete** `_,` **grayplot** `_,`
**Matplot** `_,` **Matplot1** `_,` **graphics_entities** `_,`
**Matplot_properties** `_,



Author
~~~~~~

Djalel ABDEMOUCHE & F.Leray

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/Matplot1.htm
.. _
      : ://./graphics/Matplot.htm
.. _
      : ://./graphics/grayplot.htm
.. _
      : ://./graphics/Matplot_properties.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/delete.htm


