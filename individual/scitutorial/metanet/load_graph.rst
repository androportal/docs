====
"load_graph"
====

Scilab function Last update : September 1995
**load_graph** - loads a graph



Calling Sequence
~~~~~~~~~~~~~~~~

g = load_graph(name)




Parameters
~~~~~~~~~~


+ **name** : string, the path of the graph to load
+ **g** : graph list




Description
~~~~~~~~~~~

**name** is the name of a graph file which contains the ASCII
description of a graph. Such a file must have the **"graph"**
extension. **name** can be the name or the pathname of the file; if
the **"graph"** extension is missing in **name** , it is assumed.
**load_graph** returns the corresponding graph list.



Examples
~~~~~~~~


::

    
    
    g=load_graph(SCI+'/demos/metanet/mesh100.graph');
    show_graph(g);
    g=load_graph(SCI+'/demos/metanet/colored');
    show_graph(g,'new');
     
      




See Also
~~~~~~~~

` **save_graph** `_,

.. _
      : ://./metanet/save_graph.htm


