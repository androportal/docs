====
"strong_connex"
====

Scilab function Last update : September 1995
**strong_connex** - strong connected components



Calling Sequence
~~~~~~~~~~~~~~~~

[nc,ncomp] = strong_connex(g)




Parameters
~~~~~~~~~~


+ **g** : graph list
+ **nc** : integer, number of strong connected components
+ **ncomp** : row vector of strong connected components




Description
~~~~~~~~~~~

**strong_connex** returns the number **nc** of strong connected
components for the graph **g** and a row vector **ncomp** giving the
number of the strong connected component for each node. For instance,
if **i** is a node number, **ncomp(i)** is the number of the strong
connected component to which node **i** belongs.



Examples
~~~~~~~~


::

    
    
    ta=[1 1 2 2 2 3 4 4 5 6 6 6 7 7 7 8 9 10 12 12 13 13 13 14 15];
    he=[2 6 3 4 5 1 3 5 1 7 10 11 5 8 9 5 8 11 10 11 9 11 15 13 14];
    g=make_graph('foo',1,15,ta,he);
    g('node_x')=[197 191 106 194 296 305 305 418 422 432 552 550 549 416 548]; 
    g('node_y')=[76 181 276 278 276 83 174 281 177 86 175 90 290 397 399];
    show_graph(g);
    [nc,ncomp]=strong_connex(g);
    g1=g; g1('node_color')=8+ncomp; g1('node_diam')=10+5*ncomp;
    x_message('Connected components of the graph');
    show_graph(g1);
     
      




See Also
~~~~~~~~

` **connex** `_,` **con_nodes** `_,` **strong_con_nodes** `_,

.. _
      : ://./metanet/con_nodes.htm
.. _
      : ://./metanet/strong_con_nodes.htm
.. _
      : ://./metanet/connex.htm


