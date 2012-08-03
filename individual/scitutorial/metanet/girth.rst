====
"girth"
====

Scilab function Last update : September 1996
**girth** - girth of a directed graph



Calling Sequence
~~~~~~~~~~~~~~~~

d = girth(g)




Parameters
~~~~~~~~~~


+ **g** : graph list
+ **d** : integer




Description
~~~~~~~~~~~

**girth** computes the length (number of arcs) of the shortest cycle
in an unweighted directed graph **g** .



Examples
~~~~~~~~


::

    
    
    ta=[1 6 2 4 7 5 6 8 4 3 5 1];
    he=[2 1 3 6 4 8 8 7 2 7 3 5];
    g=make_graph('foo',1,8,ta,he);
    g('node_x')=[285  284  335  160  405  189  118  45];
    g('node_y')=[266  179   83  176  368  252  64  309];
    show_graph(g);
    d=girth(g)
     
      




