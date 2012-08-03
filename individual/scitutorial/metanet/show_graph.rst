====
"show_graph"
====

Scilab function Last update : September 1995
**show_graph** - displays a graph



Calling Sequence
~~~~~~~~~~~~~~~~

nw = show_graph(g,[smode,scale])
nw = show_graph(g,[scale,winsize])




Parameters
~~~~~~~~~~


+ **g** : graph list
+ **smode** : string, mode value
+ **winsize** : row vector defining the size of edit_graph window
+ **scale** : real value, scale factor
+ **nw** : integer




Description
~~~~~~~~~~~

**show_graph** displays the graph **g** in the current edit_graph
window. If there is no current edit_graph window, a edit_graph window
is created. The return value **nw** is the number of the edit_graph
window where the graph is displayed.

If the optional argument **smode** is equal to the string 'rep' or is
not given and if there is already a graph displayed in the current
edit_graph window, the new graph is displayed instead.

If the optional argument **smode** is equal to the string 'new', a new
edit_graph window is created. In this case, if the optional argument
**winsize** is given as a row vector **[width height]** , it is the
size in pixels of edit_graph window. The default is **[600,400]** .

The optional argument **scale** is the value of the scale factor when
drawing the graph. The default value is 1.



Examples
~~~~~~~~


::

    
    
    ta=[1 1 2 2 2 3 4 5 5 7 8 8 9 10 10 10 11 12 13 13 13 14 15 16 16 17 17];
    he=[2 10 3 5 7 4 2 4 6 8 6 9 7 7 11 15 12 13 9 10 14 11 16 1 17 14 15];
    g=make_graph('foo',1,17,ta,he);
    g('node_x')=[283 163 63 57 164 164 273 271 339 384 504 513 439 623 631 757 642];
    g('node_y')=[59 133 223 318 227 319 221 324 432 141 209 319 428 443 187 151 301];
    show_graph(g,2);
    show_graph(g,0.5);
    show_graph(g,1);
     
      




See Also
~~~~~~~~

` **edit_graph** `_,` **netwindow** `_,` **netwindows** `_,

.. _
      : ://./metanet/netwindow.htm
.. _
      : ://./metanet/netwindows.htm
.. _
      : ://./metanet/edit_graph.htm


