====
"save_graph"
====

Scilab function Last update : September 1995
**save_graph** - saves a graph



Calling Sequence
~~~~~~~~~~~~~~~~

save_graph(g,path)




Parameters
~~~~~~~~~~


+ **g** : graph list
+ **path** : string, the path of the graph to save




Description
~~~~~~~~~~~

**save_graph** saves the graph **g** in a graph file. **path** is the
name of the graph file where the graph will be saved. **path** can be
the name or the pathname of the file; if the **"graph"** extension is
missing in **path** , it is assumed. If **path** is the name of a
directory, the name of the graph is used as the name of the file.



Examples
~~~~~~~~


::

    
    
    g=load_graph(SCI+'/demos/metanet/mesh100');
    show_graph(g);
    if MSDOS then 
      unix('del mymesh100.graph');
    else 
      unix('rm -f mymesh100.graph'); 
    end
    save_graph(g,'mymesh100.graph');
    g=load_graph('mymesh100');
    show_graph(g,'new');
     
      




See Also
~~~~~~~~

` **load_graph** `_,

.. _
      : ://./metanet/load_graph.htm


