====
"supernode"
====

Scilab function Last update : September 1996
**supernode** - replaces a group of nodes with a single node



Calling Sequence
~~~~~~~~~~~~~~~~

g1 = supernode(v,g)




Parameters
~~~~~~~~~~


+ **v** : row vector, nodes numbers
+ **g** : graph list
+ **g1** : graph list of the new graph




Description
~~~~~~~~~~~

**supernode** returns the graph **g1** with the nodes with numbers
given by the vector **v** being contracted in a single node. The
number of the supernode is the lowest number in **v** . The
characteristics of the old nodes and edges are preserved. The
supernode is located at the mean center of **v** . Its diameter and
border are twice the previous of the replaced node.

The demand of the new node, if it exists, is the sum of the demands of
the shrunken nodes.



Examples
~~~~~~~~


::

    
    
    ta=[1 1 2 2 2 3 4 5 5 7 8 8 9 10 10 10 10 10 11 12 13 13 13 14 15 16 16 17 17];
    he=[2 10 3 5 7 4 2 4 6 8 6 9 7 7 11 13 13 15 12 13 9 10 14 11 16 1 17 14 15];
    g=make_graph('foo',1,17,ta,he);
    g('node_x')=[283 163 63 57 164 164 273 271 339 384 504 513 439 623 631 757 642];
    g('node_y')=[59 133 223 318 227 319 221 324 432 141 209 319 428 443 187 151 301];
    g('edge_color')=modulo([1:(edge_number(g))],15)+1;
    g('node_diam')=[1:(g('node_number'))]+20;
    show_graph(g);
    v=[7 10 13 9];
    show_nodes(v);
    g1=supernode(v,g);
    show_graph(g1,'new');
     
      




See Also
~~~~~~~~

` **add_edge** `_,` **add_node** `_,` **delete_arcs** `_,`
**delete_nodes** `_,

.. _
      : ://./metanet/add_node.htm
.. _
      : ://./metanet/delete_arcs.htm
.. _
      : ://./metanet/delete_nodes.htm
.. _
      : ://./metanet/add_edge.htm


