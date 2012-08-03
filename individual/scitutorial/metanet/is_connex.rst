====
"is_connex"
====

Scilab function Last update : September 1995
**is_connex** - connectivity test



Calling Sequence
~~~~~~~~~~~~~~~~

res = is_connex(g)




Parameters
~~~~~~~~~~


+ **g** : graph list
+ **res** : integer, result of the test




Description
~~~~~~~~~~~

**is_connex** returns 1 if the graph **g** is connected and 0
otherwise.



Examples
~~~~~~~~


::

    
    
    g=make_graph('foo',1,3,[1,2,3,1],[2,3,1,3]);
    is_connex(g)
    g=make_graph('foo',1,4,[1,2,3,1],[2,3,1,3]);
    is_connex(g)
     
      




See Also
~~~~~~~~

` **con_nodes** `_,` **strong_connex** `_,

.. _
      : ://./metanet/con_nodes.htm
.. _
      : ://./metanet/strong_connex.htm


