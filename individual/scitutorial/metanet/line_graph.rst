====
"line_graph"
====

Scilab function Last update : September 1996
**line_graph** - graph with nodes corresponding to edges



Calling Sequence
~~~~~~~~~~~~~~~~

g1 = line_graph(g)




Parameters
~~~~~~~~~~


+ **g** : graph list of the old graph
+ **g1** : graph list of the new graph




Description
~~~~~~~~~~~

**line_graph** returns the graph **g1** with the nodes corresponding
to the edges of the graph **g** . **g1** is defined in the following
way: - its nodes correspond to the edges of **g** - 2 nodes of the new
graph are adjacent if and only if the corresponding edges of the graph
**g** are adjacent.

The coordinates of the nodes of **g1** are given by the middle points
of the corresponding edges of **g** .



Examples
~~~~~~~~


::

    
    
    ta=[1 1 2 4 4 5 6 7 2 3 5 1];
    he=[2 6 3 6 7 8 8 8 4 7 3 5];
    g=make_graph('foo',0,8,ta,he);
    g('node_x')=[281  284  360  185  405  182  118  45];
    g('node_y')=[262  179  130  154  368  248  64  309];
    show_graph(g);
    g1=line_graph(g);
    show_graph(g1,'new');
     
      




See Also
~~~~~~~~

` **arc_graph** `_,

.. _
      : ://./metanet/arc_graph.htm


