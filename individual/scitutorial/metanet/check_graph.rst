====
"check_graph"
====

Scilab function Last update : September 1995
**check_graph** - checks a Scilab graph list



Calling Sequence
~~~~~~~~~~~~~~~~

check_graph(g)




Parameters
~~~~~~~~~~


+ **g** : graph list to check




Description
~~~~~~~~~~~

**check_graph** checks its argument **g** to see if it is a graph
list. The checking is not only syntactic (number of elements of the
list, compatible sizes of the vectors), but also semantic in the sense
that **check_graph** checks that **node_number** , **tail** and
**head** elements of the list can really represent a graph.

Moreover, the names of the node must be different. In fact, this do
not give errors in Scilab, but strange behaviour can appear when using
the Metanet window. So, this is not checked by **check_graph** because
it is time consuming. It is only checked when loading, saving or
showing a graph.



See Also
~~~~~~~~

` **graph-list** `_,

.. _
      : ://./metanet/graph-list.htm


