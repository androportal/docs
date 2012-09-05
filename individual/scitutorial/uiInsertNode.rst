


uiInsertNode
============

Insertion in a Tree



Calling Sequence
~~~~~~~~~~~~~~~~


::

    insertTree = uiInsertNode(tree, position, node)



::

    insertTree = uiInsertNode(tree, parentNode, node)




Input parameters
~~~~~~~~~~~~~~~~

:tree Tree were we do the insertion
: :position a string, which is the position where we want to insert
  the node
: :parentNode which is the parent node into we want to insert the node
: :node node we want to insert
:



Output parameters
~~~~~~~~~~~~~~~~~

:insertTree a Tree with the node inserted
:



Description
~~~~~~~~~~~

Insertion of a node (subTree) into a tree. If we have 2 nodes called
'Node1' and 'Node2' each one at position 1.1 and 1.2. Insertion of a
new node 'Node3' at position '1.2', will move the 'Node2' to position
1.3.



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
    
    // Creation of a new nodes to insert
    leaf13 = `uiCreateNode`_('leaf 1.3', 'iconLeaf1.3', 'callbackLeaf1.3')
    testNode = `uiCreateNode`_('test', 'icon_test', 'callback_test')
    
    // Insertion of 'leaf13' in 'node2'
    treeInsert = uiInsertNode(treeRoot, node2, leaf13)
    `uiDisplayTree`_(treeInsert)
    
    // Insertion of 'testNode' at position '1.1'
    treeInsert = uiInsertNode(treeRoot, '1.1', testNode)
    `uiDisplayTree`_(treeInsert)




See Also
~~~~~~~~


+ `uiCreateNode`_ Creation of node (for Scilab Tree)
+ `uiCreateTree`_ Creation of a Tree
+ `uiDisplayTree`_ Printing a Tree in GUI mode
+ `uiDumpTree`_ Printing a Tree in the console (text mode)
+ `uiDeleteNode`_ Deletion in a Tree
+ `uiConcatTree`_ Concatenation of Trees
+ `uiEqualsTree`_ Comparing two trees
+ `uiFindNode`_ Find node in Tree
+ `uiGetParentNode`_ Get Parent of a node
+ `uiGetChildrenNode`_ Get Children of a node
+ `uiGetNodePosition`_ Get the position(s) of a node


.. _uiCreateNode: uiCreateNode.html
.. _uiDumpTree: uiDumpTree.html
.. _uiFindNode: uiFindNode.html
.. _uiDeleteNode: uiDeleteNode.html
.. _uiDisplayTree: uiDisplayTree.html
.. _uiCreateTree: uiCreateTree.html
.. _uiGetNodePosition: uiGetNodePosition.html
.. _uiEqualsTree: uiEqualsTree.html
.. _uiGetParentNode: uiGetParentNode.html
.. _uiGetChildrenNode: uiGetChildrenNode.html
.. _uiConcatTree: uiConcatTree.html


