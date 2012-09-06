


uiDisplayTree
=============

Printing a Tree in GUI mode



Calling Sequence
~~~~~~~~~~~~~~~~


::

    uiDisplayTree(tree)




Input parameters
~~~~~~~~~~~~~~~~

:tree a Tree.
:



Description
~~~~~~~~~~~

Display a tree into the a graphic window.



Examples
~~~~~~~~


::

    // We should create nodes(subTrees) before creating trees	
    leaf11 = `uiCreateNode`_('leaf 1.1')
    leaf12 = `uiCreateNode`_('leaf 1.2')
    leaf31 = `uiCreateNode`_('leaf 3.1')
    leaf32 = `uiCreateNode`_('leaf 3.2')
    node1 = `uiCreateNode`_('Node 1')
    node2 = `uiCreateNode`_('Node 2')
    node3 = `uiCreateNode`_('Node 3')
    root = `uiCreateNode`_('Root')
    
    treeNode1 = `uiCreateTree`_(node1, leaf11, leaf12)
    treeNode3 = `uiCreateTree`_(node3, leaf31, leaf32)
    
    treeRoot = `uiCreateTree`_( root, treeNode1, node2, treeNode3)
    
    uiDisplayTree(treeRoot)




See Also
~~~~~~~~


+ `uiCreateNode`_ Creation of node (for Scilab Tree)
+ `uiCreateTree`_ Creation of a Tree
+ `uiDumpTree`_ Printing a Tree in the console (text mode)
+ `uiInsertNode`_ Insertion in a Tree
+ `uiDeleteNode`_ Deletion in a Tree
+ `uiConcatTree`_ Concatenation of Trees
+ `uiEqualsTree`_ Comparing two trees
+ `uiFindNode`_ Find node in Tree
+ `uiGetParentNode`_ Get Parent of a node
+ `uiGetChildrenNode`_ Get Children of a node
+ `uiGetNodePosition`_ Get the position(s) of a node


.. _uiInsertNode: uiInsertNode.html
.. _uiCreateNode: uiCreateNode.html
.. _uiDumpTree: uiDumpTree.html
.. _uiFindNode: uiFindNode.html
.. _uiDeleteNode: uiDeleteNode.html
.. _uiGetParentNode: uiGetParentNode.html
.. _uiCreateTree: uiCreateTree.html
.. _uiGetNodePosition: uiGetNodePosition.html
.. _uiEqualsTree: uiEqualsTree.html
.. _uiGetChildrenNode: uiGetChildrenNode.html
.. _uiConcatTree: uiConcatTree.html


