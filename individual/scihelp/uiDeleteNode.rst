


uiDeleteNode
============

Deletion in a Tree



Calling Sequence
~~~~~~~~~~~~~~~~


::

    delTree = uiDeleteNode(tree, node)



::

    delTree = uiDeleteNode(tree, position)




Input parameters
~~~~~~~~~~~~~~~~

:tree Tree were we do the deletion
: :node node we want to delete
: :position a string, which is the position of the node we want to
  delete
:



Output parameters
~~~~~~~~~~~~~~~~~

:delTree a Tree without the deleted node
:



Description
~~~~~~~~~~~

Deletion of a node (subTree) from a tree. If we have 3 nodes called
'Node1', 'Node2' and 'Node3' each one at position 1.1, 1.2, and 1.3.
Deletion of node at position 1.2 ('Node2') will pull up the 'Node 3'
to position 1.2.



Examples
~~~~~~~~


::

    // We should create nodes(subTrees) before creating trees	
    leaf11 = `uiCreateNode`_('leaf 1.1', 'iconLeaf1.1', 'callbackLeaf1.1')
    leaf12 = `uiCreateNode`_('leaf 1.2', 'iconLeaf1.2', 'callbackLeaf1.2')
    leaf31 = `uiCreateNode`_('leaf 3.1', 'iconLeaf3.1', 'callbackLeaf3.1')
    leaf32 = `uiCreateNode`_('leaf 3.2', 'iconLeaf3.2', 'callbackLeaf3.2')
    node1 = `uiCreateNode`_('Node 1', 'iconNode1', 'callbackNode1')
    node2 = `uiCreateNode`_('Node 2', 'iconNode2', 'callbackNode2')
    node3 = `uiCreateNode`_('Node 3', 'iconNode3', 'callbackNode3')
    root = `uiCreateNode`_('Root', 'iconRoot', 'callbackRoot')
    
    treeNode1 = `uiCreateTree`_(node1, leaf11, leaf12)
    treeNode3 = `uiCreateTree`_(node3, leaf31, leaf32)
    treeRoot = `uiCreateTree`_(root, treeNode1, node2, treeNode3)
    
    // Deletion of 'node2'
    treeDel = uiDeleteNode(treeRoot, node2)
    `uiDisplayTree`_(treeDel)
    
    // Deletion of node at position '3.2'
    treeDel = uiDeleteNode(treeRoot, '3.2')
    `uiDisplayTree`_(treeDel)




See Also
~~~~~~~~


+ `uiCreateNode`_ Creation of node (for Scilab Tree)
+ `uiCreateTree`_ Creation of a Tree
+ `uiDisplayTree`_ Printing a Tree in GUI mode
+ `uiDumpTree`_ Printing a Tree in the console (text mode)
+ `uiInsertNode`_ Insertion in a Tree
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
.. _uiDisplayTree: uiDisplayTree.html
.. _uiCreateTree: uiCreateTree.html
.. _uiGetNodePosition: uiGetNodePosition.html
.. _uiEqualsTree: uiEqualsTree.html
.. _uiGetParentNode: uiGetParentNode.html
.. _uiGetChildrenNode: uiGetChildrenNode.html
.. _uiConcatTree: uiConcatTree.html


