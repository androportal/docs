====
"connex"
====

Scilab function Last update : September 1995
**connex** - connected components



Calling Sequence
~~~~~~~~~~~~~~~~

[nc,ncomp] = connex(g)




Parameters
~~~~~~~~~~


+ **g** : graph list
+ **nc** : integer, number of connected components
+ **ncomp** : row vector of connected components




Description
~~~~~~~~~~~

**connex** returns the number **nc** of connected components of graph
**g** and a row vector **ncomp** giving the number of the connected
component for each node. For instance, if **i** is a node number,
**ncomp(i)** is the number of the connected component to which node
number **i** belongs.



Examples
~~~~~~~~


::

    
    
    ta=[1 1 2 2 2 3 4 4 5 6 7 7 7 8 9 10 12 12 13 13 14 15];
    he=[2 6 3 4 5 1 3 5 1 7 5 8 9 5 8 11 10 11 11 15 13 14];
    g=make_graph('foo',1,15,ta,he);
    g('node_x')=[197 191 106 194 296 305 305 418 422 432 552 550 549 416 548];
    g('node_y')=[76 181 276 278 276 83 174 281 177 86 175 90 290 397 399];
    show_graph(g);
    [nc,ncomp]=connex(g)
    g('node_color')=10+ncomp; 
    g('node_diam')=10+10*ncomp;
    x_message('Displaying the connected components of this graph');
    show_graph(g);
     
      




See Also
~~~~~~~~

` **con_nodes** `_,` **is_connex** `_,` **strong_connex** `_,`
**strong_con_nodes** `_,

.. _
      : ://./metanet/con_nodes.htm
.. _
      : ://./metanet/strong_connex.htm
.. _
      : ://./metanet/strong_con_nodes.htm
.. _
      : ://./metanet/is_connex.htm


