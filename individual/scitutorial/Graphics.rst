


Graphics: Getting started
=========================

graphics library overview



2d plotting
~~~~~~~~~~~

:`plot2d`_ Plot a curve **Example:**
: :`plot2d2`_ Plot a curve as step function **Example:**
: :`plot2d3`_ Plot a curve with vertical bars **Example:**
: :`plot2d4`_ Plot a curve with arrows **Example:**
: :`fplot2d`_ Plot a curve defined by a function **Example:**
: :`champ`_ 2D vector field **Example:**
: :`champ1`_ 2D vector field with colored arrows **Example:**
: :`fchamp`_ Direction field of a 2D first order ODE **Example:**
: :`contour2d`_ Level curves of a surface on a 2D plot
: :`fcontour2d`_ Level curves of a surface defined by a function on a
  2D plot **Example:**
: :`grayplot`_ 2D plot of a surface using colors **Example:**
: :`fgrayplot`_ 2D plot of a surface defined by a function using
  colors **Example:**
: :`Sgrayplot`_ Smooth 2D plot of a surface using colors **Example:**
: :`Sfgrayplot`_ Smooth 2D plot of a surface defined by a function
  using colors **Example:**
: :`xgrid`_ Add a grid on a 2D plot **Example:**
: :`errbar`_ Add vertical error bars on a 2D plot **Example:**
: :`histplot`_ Plot a histogram **Example:**
: :`Matplot`_ 2D plot of a matrix using colors **Example:**
:



3d plotting
~~~~~~~~~~~

:`plot3d`_ Plot a surface **Example:**
: :`plot3d1`_ Plot a surface with gray or color level **Example:**
: :`fplot3d`_ Plot a surface defined by a function **Example:**
: :`fplot3d1`_ Plot a surface defined by a function with gray or color
  level **Example:**
: :`param3d`_ Plot one curve **Example:**
: :`param3d1`_ Plots curves **Example:**
: :`contour`_ Level curves on a 3D surface **Example:**
: :`fcontour`_ Level curves on a 3D surface defined by a function
  **Example:**
: :`hist3d`_ 3D representation of a histogram **Example:**
: :`genfac3d`_ Compute facets of a 3D surface **Example:**
: :`eval3dp`_ Compute facets of a 3D surface **Example:**
: :`geom3d`_ Projection from 3D on 2D after a 3D plot **Example:**
:



Line and polygon plotting
~~~~~~~~~~~~~~~~~~~~~~~~~

:`xpoly`_ Draw a polyline or a polygon
: :`xpolys`_ Draw a set of polylines or polygons
: :`xrpoly`_ Draw a regular polygon
: :`xsegs`_ Draw unconnected segments
: :`xfpoly`_ Fill a polygon
: :`xfpolys`_ Fill a set of polygons
:



Rectangle plotting
~~~~~~~~~~~~~~~~~~

:`xrect`_ Draw a rectangle
: :`xfrect`_ Fill a rectangle
: :`xrects`_ Draw or fill a set of rectangles
:



Arc plotting
~~~~~~~~~~~~

:`xarc`_ Draw a part of an ellipse
: :`xarcs`_ Draw parts of a set of ellipses
: :`xfarc`_ Fill a part of an ellipse
: :`xfarcs`_ Fill parts of a set of ellipses
:



Arrow plotting
~~~~~~~~~~~~~~

:`xarrows`_ Draw a set of arrows
:



Strings
~~~~~~~

:`xstring`_ Draw strings
: :`xstringl`_ Compute a box which surrounds strings
: :`xstringb`_ Draw strings into a box **Example:**
: :`xtitle`_ Add titles on a graphics window **Example:**
: :`titlepage`_ Add a title in the middle of a graphics window
: :`xinfo`_ Draw an info string in the message subwindow
:



Frames and axes
~~~~~~~~~~~~~~~

:`drawaxis`_ Draw an axis
: :`graduate`_ Pretty axis graduations
: :`plotframe`_ Plot a frame with scaling and grids
:



Coordinates transformations
~~~~~~~~~~~~~~~~~~~~~~~~~~~

:`isoview`_ Set scales for isometric plot (do not change the size of
  the window)
: :`square`_ Set scales for isometric plot (change the size of the
  window)
: :`scaling`_ Affine transformation of a set of points
: :`rotate`_ Rotation of a set of points
: :`xsetech`_ Set the sub-window of a graphics window for plotting
: :`subplot`_ Divide a graphics window into a matrix of sub-windows
: :`xgetech`_ Get the current graphics scale
: :`xchange`_ Transform real to pixel coordinates
:



Colors
~~~~~~

:`colormap`_ Using colormaps
: :`getcolor`_ Dialog to select colors in the current colormap
: :`addcolor`_ Add new colors to the current colormap
: :`graycolormap`_ Linear gray colormap
: :`hotcolormap`_ Red to yellow colormap
:



Graphics context
~~~~~~~~~~~~~~~~

:`xset`_ Set values of the graphics context
: :`xget`_ Get current values of the graphics context
: :`xlfont`_ Load a font in the graphics context or query loaded font
: :`getsymbol`_ Dialog to select a symbol and its size
:



Save and load
~~~~~~~~~~~~~

:`xsave`_ Save graphics into a file
: :`xload`_ Load a saved graphics
: :`xs2bmp`_ Export graphics using the BMP format
: :`xs2emf`_ Export graphics using the EMF format
: :`xs2eps`_ Export graphics using the EPS format
: :`xs2gif`_ Export graphics using the GIF format
: :`xs2jpg`_ Export graphics using the JPG format
: :`xs2pdf`_ Export graphics using the PDF format
: :`xs2png`_ Export graphics using the PNG format
: :`xs2ppm`_ Export graphics using the PPM format
: :`xs2ps`_ Export graphics using the PS format
: :`xs2svg`_ Export graphics using the SVG format
:



Graphics primitives
~~~~~~~~~~~~~~~~~~~

:`clf`_ Clear a graphics window and erase the associated recorded
  graphics
: :`xclear`_ Clear a graphics window
: :`driver`_ Select a graphics driver
: :`xinit`_ Initialisation of a graphics driver
: :`xend`_ Close a graphics session
: :`xbasr`_ Redraw a graphics window
: :`replot`_ Redraw the current graphics window with new boundaries
: :`xpause`_ Suspend Scilab
: :`show_window`_ Raise the current graphics window
: :`xdel`_ Delete a graphics window
: :`winsid`_ Return the list of graphics windows
: :`xname`_ Change the name of the current graphics window
:



Mouse position
~~~~~~~~~~~~~~

:`xclick`_ Wait for a mouse click
: :`locate`_ Mouse selection of a set of points
: :`xgetmouse`_ Get the current position of the mouse
:



Interactive editor
~~~~~~~~~~~~~~~~~~

:`edit_curv`_ Interactive graphics curve editor
:



Graphics functions for automatic control
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:`bode`_ Bode plot **Example:**
: :`gainplot`_ Magnitude plot **Example:**
: :`nyquist`_ Nyquist plot **Example:**
: :`m_circle`_ M-circle plot **Example:**
: :`chart`_ Nichols chart **Example:**
: :`black`_ Black's diagram **Example:**
: :`evans`_ Evans root locus **Example:**
: :`sgrid`_ s-plane grid lines **Example:**
: :`plzr`_ pole-zero plot **Example:**
: :`zgrid`_ zgrid plot **Example:**
:

.. _xend: xend.html
.. _getsymbol: getsymbol.html
.. _xs2bmp: xs2bmp.html
.. _xsetech: xsetech.html
.. _xfarc: xfarc.html
.. _plot2d4: plot2d4.html
.. _zgrid: zgrid.html
.. _titlepage: titlepage.html
.. _xarrows: xarrows.html
.. _xstring: xstring.html
.. _xpolys: xpolys.html
.. _genfac3d: genfac3d.html
.. _plotframe: plotframe.html
.. _xarc: xarc.html
.. _evans: evans.html
.. _xgrid: xgrid.html
.. _xs2jpg: xs2jpg.html
.. _fcontour2d: fcontour2d.html
.. _isoview: isoview.html
.. _subplot: subplot.html
.. _xclick: xclick.html
.. _fgrayplot: fgrayplot.html
.. _xgetech: xgetech.html
.. _xbasr: xbasr.html
.. _grayplot: grayplot.html
.. _plot2d: plot2d.html
.. _chart: chart.html
.. _xget: xget.html
.. _xpoly: xpoly.html
.. _sgrid: sgrid.html
.. _xs2gif: xs2gif.html
.. _winsid: winsid.html
.. _xs2ppm: xs2ppm.html
.. _xfpoly: xfpoly.html
.. _square: square.html
.. _xtitle: xtitle.html
.. _xgetmouse: xgetmouse.html
.. _hotcolormap: hotcolormap.html
.. _graduate: graduate.html
.. _clf: clf.html
.. _contour2d: contour2d.html
.. _contour: contour.html
.. _hist3d: hist3d.html
.. _xrect: xrect.html
.. _xfrect: xfrect.html
.. _locate: locate.html
.. _xfarcs: xfarcs.html
.. _xs2pdf: xs2pdf.html
.. _xs2eps: xs2eps.html
.. _gainplot: gainplot.html
.. _xinit: xinit.html
.. _geom3d: geom3d.html
.. _histplot: histplot.html
.. _driver: driver.html
.. _xs2emf: xs2emf.html
.. _colormap: colormap.html
.. _plot3d: plot3d.html
.. _graycolormap: graycolormap.html
.. _drawaxis: drawaxis.html
.. _plot2d2: plot2d2.html
.. _xfpolys: xfpolys.html
.. _xs2svg: xs2svg.html
.. _xset: xset.html
.. _rotate: rotate.html
.. _getcolor: getcolor.html
.. _param3d: param3d.html
.. _xs2png: xs2png.html
.. _plot2d3: plot2d3.html
.. _nyquist: nyquist.html
.. _Sfgrayplot: Sfgrayplot.html
.. _fplot3d1: fplot3d1.html
.. _xarcs: xarcs.html
.. _xdel: xdel.html
.. _xs2ps: xs2ps.html
.. _Sgrayplot: Sgrayplot.html
.. _xlfont: xlfont.html
.. _xchange: xchange.html
.. _fchamp: fchamp.html
.. _xsave: xsave.html
.. _m_circle: m_circle.html
.. _xstringb: xstringb.html
.. _scaling: scaling.html
.. _black: black.html
.. _xrects: xrects.html
.. _champ: champ.html
.. _addcolor: addcolor.html
.. _xstringl: xstringl.html
.. _bode: bode.html
.. _xrpoly: xrpoly.html
.. _edit_curv: edit_curv.html
.. _show_window: show_window.html
.. _replot: replot.html
.. _fplot3d: fplot3d.html
.. _plot3d1: plot3d1.html
.. _xload: xload.html
.. _plzr: plzr.html
.. _fplot2d: fplot2d.html
.. _param3d1: param3d1.html
.. _eval3dp: eval3dp.html
.. _Matplot: Matplot.html
.. _xname: xname.html
.. _xclear: xclear.html
.. _fcontour: fcontour.html
.. _xinfo: xinfo.html
.. _xsegs: xsegs.html
.. _errbar: errbar.html
.. _xpause: xpause.html
.. _champ1: champ1.html


