====
"gen_net"
====

Scilab function Last update : September 1996
**gen_net** - interactive or random generation of a network



Calling Sequence
~~~~~~~~~~~~~~~~

g = gen_net(name,directed,v)
g = gen_net()




Parameters
~~~~~~~~~~


+ **name** : string, the name of the graph
+ **directed** : integer, 0 (undirected graph) or 1 (directed graph)
+ **v** : row vector with 12 values for defining the network
+ **g** : graph list




Description
~~~~~~~~~~~

**gen_net** generates a network **g** . The arguments are the name of
the graph, a flag equal to 0 (undirected graph) or to 1 (directed
graph) and a vector describing the network (see below).

If no argument are given, a dialog box for the definition of all the
arguments is opened.

**v** must be a row vector with 12 values. The meaning of the values
are:

Seed for random: used for initialization of random generation

Number of nodes

Number of sources

Number of sinks

Minimum cost

Maximum cost

Input supply

Output supply

Minimum capacity

Maximum capacity

Percentage of edges with costs: between 0 and 100

Percentage of edges with capacities: between 0 and 100

The cost of edges without cost are put to minimum cost. The maximum
capacity of edges without capacity are put to maximum upply

The result is a network **g** built on a planar connected graph, by
using a triangulation method. Moreover, computations are made in order
to have a coherent network. Values of costs and maximum capacities are
put on the edges. Minimum capacities are reduced to 0.



Examples
~~~~~~~~


::

    
    
    v=[1,10,2,1,0,10,100,100,0,100,50,50];
    g=gen_net('foo',1,v);
    show_graph(g)
    // generating using dialogs
    g=gen_net();
    show_graph(g)
     
      




See Also
~~~~~~~~

` **mesh2d** `_,

.. _
      : ://./metanet/mesh2d.htm


