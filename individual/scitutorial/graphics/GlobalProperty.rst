====
"GlobalProperty"
====

Scilab Function Last update : 25/03/2005
**GlobalProperty** - to customize the objects appearance (curves,
surfaces...) in a plot or surf command.



Calling Sequence
~~~~~~~~~~~~~~~~

None. The GlobalProperty is an optional argument that can be used
  inside a plot or surf command. It allows a global customization of all
  the new plotted lines (respectivly surfaces). It has to be given as a
  couple {PropertyName, PropertyValue}. Several couples can be set at
  the same time in a plot or surf call.


PropertyName must be a string defining the property to set.The
  PropertyValue can be a real, integer or string (scalar or matrix)
  depending on the type of property used. For example, to specify a red
  (color) longdash-dot (line style) with diamond marker (marker), the
  sequence should be : 'Colo','red','LineSt','-.','Marker','diam'.


As you can see, a full complete spelling of each property name and
  value is not required but those arguments, specified in any order,
  must remain unambiguous. Furthermore, the string specification is not
  case sensitive. GlobalProperty is predominant on all LineSpec
  previously stated.




Description
~~~~~~~~~~~

Here is a complete list of the **PropertyName** you can specify (using
` **plot** `_ or ` **surf** `_) and their available associated
**PropertyValue** . If not specified, those properties are available
for both **Polyline** and **Fac3d** objects (created respectivly by
plot or surf) and, as previously said, they are applied to the new
created objects (lines or surfaces).

Sometimes, you may have two PropertyName correponding to one property
: the first one is the equivalent default Matlab name, the second is
the default name used by Scilab (i.e.: ** Color or Foreground** for a
line, see below).

****


**CData or ColorData: **a real matrix specifiying the color at every
points defined by **Z** matrix. This property is linked to the
object's **data.color** property (see ` **surface_properties** `_).
Note that this property is available for surfaces only.
    ****


**CDataMapping or ColorDataMapping: **a string with value **'scaled'**
or **'direct'** . If a **data.color** is set, each index color data
specifies a single value for each vertex. **cdata_mapping** determines
wether those indices are scaled to map linearly into the current
colormap ( **'scaled'** mode) or point directly into this colormap (
**'direct** ' mode). This property is usefull when **color_flag**
equals **2** , **3** or **4** . Note that this property exists only
with **Fac3d** entities. Note also that **plot3d** has **'direct'**
mode by default and **surf** has ** 'scaled'** mode by default.
    ****


**Clipping: **a string **"on"** or **"off"** defining the clipping
mode ( **"on"** by default). It is equivalent to the **clip_state**
property. This field contains the **visible** property (see `
**polyline_properties** `_). Note that this property is not yet
available for surface entities.
    ****


**Color or Foreground: **a string defining a known color (see `
**color_list** `_) or a **1** x **3** (or **3** x **1** ) RGB vector
defining a color number. Color number is given as a 3-uple **R** ,
**G** , **B** corresponding respectively to red, green and blue
intensity between 0 and 1. This property is linked to the object's
**foreground** property (see ` **polyline_properties** `_).
**Warning** ** :** Color is not available for surfaces objects. The
**Foreground** property exists for surfaces objects but is linked to
the Matlab **EdgeColor** property (see ` **surface_properties** `_).
    ****


**EdgeColor or Foreground: **a string defining a known color (see `
**color_list** `_) or a **1** x **3** (or **3** x **1** ) RGB vector
defining a color number. Color number is given as a 3-uple **R** ,
**G** , **B** corresponding respectively to red, green and blue
intensity between 0 and 1. This property is linked to the surface
**foreground** property (see ` **surface_properties** `_). **Warning**
** :** For polyline objects, the **Foreground** property exists with a
different meaning (see above) and **EdgeColor** does not exist at all.
    ****


**FaceColor: **a string with value **'none'** , **'flat'** or
**'interp'** specifying the way the facet's color are rendered. When
** 'none'** is selected, a mesh of the surface is drawn; if **'flat'**
(deault mode) is set, the **Fac3d** **color.data** values determine
one color per facet using the color of the first vertex of the facet.
If the value is **'interp'** , an interpolated shading is done on the
surface using **color.data** to determine a color at each vertex of
each facet.
    ****


**LineStyle: **This property value should be a string defining a line
  style. This property is linked to tje object's **line_style** property
  (see ` **polyline_properties** `_ or ` **surface_properties** `_).
  **Specifier** **Line Style** **-** Solid line (default) **--** Dashed
  line **:** Dotted line **-.** Dash-dotted line **none** No line
****
****
**Marker or MarkStyle: **A string defining the marker type. Note that
  if you specify a marker wihtout a line style, both line (with default
  solid mode enabled) and marker are drawn.This property is linked to
  the object's **mark_style** and **mark_mode** properties (see `
  **polyline_properties** `_ or ` **surface_properties** `_).
  **Specifier** **Marker Type** **+** Plus sign **o** Circle *****
  Asterisk **.** Point **x** Cross **'square'** or **'s'** Square
  **'diamond'** or **'d'** Diamond **^** Upward-pointing triangle **v**
  Downward-pointing triangle **>** Right-pointing triangle **<** Left-
  pointing triangle **'pentagram'** Five-pointed star (pentagram)
  **'none'** No marker (default)
****
****
**MarkerEdgeColor or MarkForeground: **a string defining a known color
(see color_list) or a **1** x **3** (or **3** x **1** ) RGB vector
defining a color number. Color number is given as a 3-uple **R** ,
**G** , **B** corresponding respectively to red, green and blue
intensity between 0 and 1. This property is linked to the object's
**mark_foreground** property (see ` **polyline_properties** `_ or `
**surface_properties** `_).
    ****


**MarkerFaceColor or MarkBackground: **a string defining a known color
(see color_list) or a **1** x **3** (or **3** x **1** ) RGB vector
defining a color number. Color number is given as a 3-uple **R** ,
**G** , **B** corresponding respectively to red, green and blue
intensity between 0 and 1. This property is linked to the object's
**mark_background** property (see ` **polyline_properties** `_ or `
**surface_properties** `_).
    ****


**MarkerSize or MarkSize: **a scalar defining the marker size in
**point** unit. This property is linked to the object's **mark_size**
property with **mark_size_unit** enabled to **"point"** (see `
**polyline_properties** `_ or ` **surface_properties** `_).
    ****


**Visible: **a string **"on"** or **"off"** defining the visibility
mode ( **"on"** by default). This property is linked to the object's
**visible** property (see ` **polyline_properties** `_ or `
**surface_properties** `_).
    ****


**X data: **a real vector or matrix (re-)defining the given data for
all the plotted lines or surfaces. Concerning dimensions, note that
this new data must match all the previous specified **X** data : that
is to say all those data matrices must be of the same dimensions. This
property is linked to the object's **data.x** property (see `
**polyline_properties** `_ or ` **surface_properties** `_).
    ****


**Y data: **a real vector or matrix (re-)defining the given data for
all the plotted lines or surfaces. Concerning dimensions, note that
this new data must match all the previous specified **Y** data : that
is to say all those data matrices must be of the same dimensions. This
property is linked to the object's **data.y** property (see `
**polyline_properties** `_ or ` **surface_properties** `_).
    ****


**Z data: **when used with **plot** , a real vector or matrix adding a
**Z** data for all the plotted lines ; with **surf** , a real matrix
(re-)defining the given data for all the surfaces. Concerning
dimensions, note that this new data must match all the previous
specified **X** and **Y** data. This property is linked to the
object's **data.z** property (see ` **polyline_properties** `_ or `
**surface_properties** `_).
    ****






Examples
~~~~~~~~


::

    // --------------------
    // With the plot command :
    // --------------------
    x=1:10; // Init.
    plot(x,sin(x),'colo','red','linest','-.','marker','>','markeredg','cyan','markerFace','yellow','markersize',5)
    clf();
    
    // combinations' order in {PropertyName,PropertyValue} does not matter
    plot(x,sin(x),'marker','p','markerfac','cyan','markersiz',10)
    clf();
    
    // combination of LineSpec and GlobalProperty shows the GlobalProperty predominance
    plot(x,x.*x,'*cya--','color','gr','linestyle','-','marker','sq','markersize',6,'markforegroun','red','markbackgro',[0.2 0.5 0.6])
    clf();
    
    //multiple plots with different LineSpecs and finally some global GlobalProperty
    clf();
    t=0:%pi/20:2*%pi;
    plot(t,sin(t),'ro-.',t,cos(t),'cya+',t,abs(sin(t)),'--mo','markstyl','diam')
    
    // --------------------
    // With the surf command :
    // --------------------
    
    
    Z= [   0.0001    0.0013    0.0053   -0.0299   -0.1809   -0.2465   -0.1100   -0.0168   -0.0008   -0.0000
        0.0005    0.0089    0.0259   -0.3673   -1.8670   -2.4736   -1.0866   -0.1602   -0.0067    0.0000
        0.0004    0.0214    0.1739   -0.3147   -4.0919   -6.4101   -2.7589   -0.2779    0.0131    0.0020
       -0.0088   -0.0871    0.0364    1.8559    1.4995   -2.2171   -0.2729    0.8368    0.2016    0.0130
       -0.0308   -0.4313   -1.7334   -0.1148    3.0731    0.4444    2.6145    2.4410    0.4877    0.0301
       -0.0336   -0.4990   -2.3552   -2.1722    0.8856   -0.0531    2.6416    2.4064    0.4771    0.0294
       -0.0137   -0.1967   -0.8083    0.2289    3.3983    3.1955    2.4338    1.2129    0.2108    0.0125
       -0.0014   -0.0017    0.3189    2.7414    7.1622    7.1361    3.1242    0.6633    0.0674    0.0030
        0.0002    0.0104    0.1733    1.0852    2.6741    2.6725    1.1119    0.1973    0.0152    0.0005
        0.0000    0.0012    0.0183    0.1099    0.2684    0.2683    0.1107    0.0190    0.0014    0.0000];
    
    clf();
    f=gcf();
    f.figure_size = [610,724];
    subplot(211)
    surf(Z,'facecol','interp','ydat',101:110,'edgecol','mage')
    subplot(212)
    surf(Z,'edgeco','b','marker','d','markersiz',9,'markerfac','k','xdata',-50:-41)
    
     




See Also
~~~~~~~~

` **LineSpec** `_,` **plot** `_,` **surf** `_,` **clf** `_,`
**polyline_properties** `_,` **surface_properties** `_,



Author
~~~~~~

F.Leray

.. _
        : ://./graphics/color_list.htm
.. _
      : ://./graphics/surf.htm
.. _
      : ://./graphics/plot.htm
.. _
      : ://./graphics/LineSpec.htm
.. _
      : ://./graphics/surface_properties.htm
.. _
      : ://./graphics/polyline_properties.htm
.. _
      : ://./graphics/clf.htm


