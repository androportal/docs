====
"edit_graph_menus"
====

Description Last update : 20/12/2004
**edit_graph_menus** - **edit_graph** menus description



Description
~~~~~~~~~~~

The edit_graph editor supports the following menus:

**Graph/New: **This menu erases the currently edited network.
**Graph/Zoom: **This menu allows to set the scale factor for the
  display
**Graph/Replot: **This menu erases and re-displays the network. This
  edition mode can also be entered pressing the " **r** " key while
  locator is in the edition window.
**Graph/Find Node: **This menu asks for a node number or a node name.
  If this node exists the view is modified such as the node appears in
  the middle of the graphic window.
**Graph/Find Arc: **This menu asks for an arc number or aa arc name.
  If this arc exists the view is modified such as the arc appears in the
  middle of the graphic window.
**Graph/SaveAs: **This menu allows to save the graph under a specified
  name
**Graph/Save: **This menu allows to save the graph under its current
  name This edition mode can also be entered pressing the " **s** " key
  while locator is in the edition window.
**Graph/Load: **This menu allows to load a "graph" file.
**Graph/Options: **This menu allows to set global graph properties
  This edition mode can also be entered pressing the " **o** " key while
  locator is in the edition window.
**Graph/Settings: **This menu allows to set if graph is directed or
  not. It also sets default values for node diameter, node border width,
  edge width, and font size.
**Information: **This menu outputs graph informations, like number of
  nodes, number of arcs, nodes properties ans arc properties.
**Graph/Quit: **Use this menu to exit out of the editor.
**Edit/NewNode: **This menu set the current edition mode to "node
  addition". To add a node just click on its desired position. This
  edition mode can also be entered pressing the "n" key while locator is
  in the edition window (Under windows, the edition window should also
  have the focus). It is the current editing mode when edit_graph is
  started. This mode remains active until an other edition mode is
  selected. This edition mode can also be entered pressing the " **n** "
  key while locator is in the edition window.
**Edit/NewArc: **This menu set the current edition mode to "edge
  addition". To add an edge between two nodes just left click on the
  initial node and on the final node (click on right button cancels
  current edge addition). This edition mode can also be entered pressing
  the "a" key while locator is in the edition window (Under windows, the
  edition window should also have the focus). This mode remains active
  until an other edition mode is selected. This edition mode can also be
  entered pressing the " **a** " key while locator is in the edition
  window.
**Edit/Move Node: **This menu set the current edition mode to "move
  node". To move a node just left click on the selected node move the
  mouse up to the final position and left click (click on right button
  cancels move). This edition mode can also be entered pressing the "
  **m** " key while locator is in the edition window. This mode remains
  active until an other edition mode is selected.
**Edit/Move Region: **This menu set the current edition mode to "move
  region mode". To move a rectangular region just click left on a
  rectangle corner, drag rectangle to the desired area, click left to
  validate the area (click on right button cancels move) then move the
  rectangle to the desired position and click to validate.
**Edit/Copy Region To ClipBoard: **This menu set the current edition
  mode to "copy region to clipboard mode". To copy a rectangular region
  into the edit_graph clipboard just click left on a rectangle corner,
  drag rectangle to the desired area, click left to validate the area
  (click on right button cancels copy) . The edit_graph clipboard is
  shared by all edit_graph editors. This mode remains active until an
  other edition mode is selected.
**Edit/Paste: **This menu set the current edition mode to "paste from
  clipboard mode" to clipboard mode". To paste clipboard into the
  edit_graph editor click left to select the editor window, drag
  rectangle to the desired area, click left to validate the position
  (click on right button cancels copy) . This edition mode can also be
  entered pressing the " **v** " key while locator is in the edition
  window. This mode remains active until an other edition mode is
  selected.
**Edit/Delete: **This menu set the current edition mode to "delete
  object mode". To delete a node or an edge just left click on the
  selected object. This edition mode can also be entered pressing the "
  **d** " key while locator is in the edition window. This mode remains
  active until an other edition mode is selected.
**Edit/Delete Region**This menu set the current edition mode to
  "delete region mode". To delete a rectangular region just click left
  on a rectangle corner, drag rectangle to the desired area, click left
  to validate the area (click on right button cancels selection). Note
  that the deleted region is not send to the clipboard This mode remains
  active until an other edition mode is selected. This edition mode can
  also be entered pressing the " **x** " key while locator is in the
  edition window.
**Edit/Properties: **This menu set the current edition mode to "set
  object properties". To set a node or an edge properties, just left
  click on the selected object; a popup dialog appears. This mode
  remains active until an other edition mode is selected. This edition
  mode can also be entered pressing the " **p** " key while locator is
  in the edition window.
**Edit/Default names: **This menu automatically sets the node and egde
  names properties to node and egde internal number.
**Edit/Undo: **This menu set the current edition mode to "undo
  previous edition". It can be used recursively. This edition mode can
  also be entered pressing the " **u** " key while locator is in the
  edition window.


Note that Under windows, the shortcuts are taken into accound only if
the edition have the focus.



See Also
~~~~~~~~

` **edit_graph** `_,

.. _
      : ://./metanet/edit_graph.htm


