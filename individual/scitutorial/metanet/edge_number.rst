====
"edge_number"
====

Scilab function Last update : September 1996
**edge_number** - number of edges of a graph



Calling Sequence
~~~~~~~~~~~~~~~~

ma = edge_number(g)




Parameters
~~~~~~~~~~


+ **g** : graph list
+ **m** : integer, number of edges




Description
~~~~~~~~~~~

**edge_number** returns the number **m** of edges of the graph. If the
graph is directed, it is the number of arcs. If the graph is
undirected, it is half the number of edges. It is always equal to the
dimension of **g('tail')** and **g('head')** .



See Also
~~~~~~~~

` **arc_number** `_,` **node_number** `_,

.. _
      : ://./metanet/node_number.htm
.. _
      : ://./metanet/arc_number.htm


