====
"edit_graph"
====

Scilab Function Last update : April 1993
**edit_graph** - graph and network graphical editor



Calling Sequence
~~~~~~~~~~~~~~~~

num=edit_graph()
num=edit_graph(file_name [,zoom [,wsize]])
num=edit_graph(G [,zoom [,wsize]])




Parameters
~~~~~~~~~~


+ **file_name** : character string. The path of a "graph" file
+ **G** : a ** graph-list** data structure
+ **zoom** : real positive scalar. The zoom factor, its default value
  is 1.
+ **wsize** : real positive vector ** [width height]** . The initial
  window dimensions, its default value is **[600,400]** .
+ **num** : integer scalar. The associated window number window
  dimension.




Description
~~~~~~~~~~~

This function starts a network graphical editor. Each time
**edit_graph** is executed, a new editor window is created. The editor
capabilities and menus are described in ` **edit_graph_menus** `_



Examples
~~~~~~~~


::

    
    
     ta=[1 1 2 2 2 3 4 5 5 7 8 8 9 10 10 10 11 12 13 13 13 14 15 16 16 17 17];
     he=[2 10 3 5 7 4 2 4 6 8 6 9 7 7 11 15 12 13 9 10 14 11 16 1 17 14 15];
     g=make_graph('foo',1,17,ta,he);
     g('node_x')=[283 163 63 57 164 164 273 271 339 384 504 513 439 623 631 757 642];
     g('node_y')=[59 133 223 318 227 319 221 324 432 141 209 319 428 443 187 151 301];
     edit_graph(g)
    
     
      




See Also
~~~~~~~~

` **netclose** `_,` **show_graph** `_,` **netwindow** `_,`
**edit_graph_menus** `_,

.. _
      : ://./metanet/show_graph.htm
.. _
      : ://./metanet/netwindow.htm
.. _
      : ://./metanet/edit_graph_menus.htm
.. _
      : ://./metanet/netclose.htm


