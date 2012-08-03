====
"successors"
====

Scilab function Last update : September 1996
**successors** - head nodes of outgoing arcs of a node



Calling Sequence
~~~~~~~~~~~~~~~~

a = successors(i,g)




Parameters
~~~~~~~~~~


+ **i** : integer
+ **g** : graph list
+ **a** : row vector of integers




Description
~~~~~~~~~~~

**successors** returns the row vector of the numbers of the head nodes
of the outgoing arcs from node i for a directed graph **g** .



Examples
~~~~~~~~


::

    
    
    ta=[1  6  2  4  7  5  6  8  4  3  5  1];
    he=[2  1  3  6  4  8  8  7  2  7  3  5];
    g=make_graph('foo',1,8,ta,he);
    g('node_x')=[285  284  335  160  405  189  118  45];
    g('node_y')=[266  179   83  176  368  252  64  309];
    show_graph(g);
    a=successors(6,g)
    show_nodes(a);
     
      




See Also
~~~~~~~~

` **neighbors** `_,` **predecessors** `_,

.. _
      : ://./metanet/predecessors.htm
.. _
      : ://./metanet/neighbors.htm


