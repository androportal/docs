====
"mat_2_graph"
====

Scilab function Last update : September 1995
**mat_2_graph** - graph from node-arc or node-node incidence matrix



Calling Sequence
~~~~~~~~~~~~~~~~

g = mat_2_graph(a,directed,[mat])




Parameters
~~~~~~~~~~


+ **a** : sparse node-arc or node-node incidence matrix
+ **directed** : integer, 0 (undirected graph) or 1 (directed graph)
+ **mat** : optional string, 'node-arc' or 'node-node' matrix
+ **g** : graph list




Description
~~~~~~~~~~~

**mat_2_graph** computes the graph **g** corresponding to the node-arc
or the node-node incidence matrix **a** . Note that a checking is made
to insure that **a** is a sparse node-arc or node-node incidence
matrix of a directed ( **directed = 1** ) or undirected ( **directed =
0** ) graph. If the optional argument **mat** is omitted or is the
string **'node-arc'** , a must be a node-arc matrix. If **mat** is the
string **'node-node'** , a must be a node-node matrix.



Examples
~~~~~~~~


::

    
    
    g=load_graph(SCI+'/demos/metanet/colored');
    show_graph(g);
    a=graph_2_mat(g);
    g1=mat_2_graph(a,1);
    g1('node_x')=g('node_x'); g1('node_y')=g('node_y');
    show_graph(g1,'new');
    a=graph_2_mat(g,'node-node');
    g1=mat_2_graph(a,1,'node-node');
    g1('node_x')=g('node_x'); g1('node_y')=g('node_y');
    show_graph(g1,'new');
     
      




See Also
~~~~~~~~

` **adj_lists** `_,` **chain_struct** `_,` **graph_2_mat** `_,

.. _
      : ://./metanet/chain_struct.htm
.. _
      : ://./metanet/adj_lists.htm
.. _
      : ://./metanet/graph_2_mat.htm


