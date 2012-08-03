====
"graph_2_mat"
====

Scilab function Last update : September 1995
**graph_2_mat** - node-arc or node-node incidence matrix of a graph



Calling Sequence
~~~~~~~~~~~~~~~~

a = graph_2_mat(g,mat)




Parameters
~~~~~~~~~~


+ **g** : graph list
+ **mat** : optional string, 'node-arc' or 'node-node' matrix
+ **a** : sparse node-arc or node-node incidence matrix




Description
~~~~~~~~~~~

**graph_2_mat** computes the node-arc or the node-node incidence
matrix corresponding to the graph **g** .

If the optional argument **mat** is omitted or is the string **'node-
arc'** , the node-arc matrix is computed. If **mat** is the string
**'node-node'** , the node-node matrix is computed.

If **n** is the number of nodes of the graph and **m** is the number
of edges of the graph, the node-arc matrix is a Scilab sparse matrix
of size **(n,m)** .

It is defined as follows. If the graph is directed:

**a(i,j) = +1** if node **i** is the tail of arc **j**

**a(i,j) = -1** if node **i** is the head of arc **j**

If the graph is undirected:

**a(i,j) = 1** if node **i** is the tail or the head of arc **j**

If **n** is the number of nodes of the graph, the node-node matrix is
a Scilab sparse matrix of size **(n,n)** .

It is defined as follows:

**a(i,j) = 1** if there is an arc from node **i** to node **j**



Examples
~~~~~~~~


::

    
    
    g=load_graph(SCI+'/demos/metanet/colored');
    a=graph_2_mat(g)
    a=graph_2_mat(g,'node-node')
     
      




See Also
~~~~~~~~

` **mat_2_graph** `_,

.. _
      : ://./metanet/mat_2_graph.htm


