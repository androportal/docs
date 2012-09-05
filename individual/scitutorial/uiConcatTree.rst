


uiConcatTree
============

Concatenation of Trees



Calling Sequence
~~~~~~~~~~~~~~~~


::

    concatenatedTree = uiConcatTree(tree1, tree2)




Input parameters
~~~~~~~~~~~~~~~~

:tree1, tree2 are of type Tree
:



Output parameters
~~~~~~~~~~~~~~~~~

:concatenatedTree a Tree, which is the concatenation of tree1 and
  tree2
:



Description
~~~~~~~~~~~

Concatenation will return a tree which is the concatenation of the
first tree with the second one. The concatenation will took place at
the parent level of the first tree.



Examples
~~~~~~~~


::

    // We should create nodes(subTrees) before creating trees	
    leaf11 = `uiCreateNode`_('leaf 1.1', 'iconLeaf1.1', 'callbackLeaf1.1')
    leaf12 = `uiCreateNode`_('leaf 1.2', 'iconLeaf1.2', 'callbackLeaf1.2')
    leaf21 = `uiCreateNode`_('leaf 2.1', 'iconLeaf2.1', 'callbackLeaf2.1')
    leaf22 = `uiCreateNode`_('leaf 2.2', 'iconLeaf2.2', 'callbackLeaf2.2')
    node1 = `uiCreateNode`_('Node 1', 'iconNode1', 'callbackNode1')
    node2 = `uiCreateNode`_('Node 2', 'iconNode2', 'callbackNode2')
    root = `uiCreateNode`_('Root', 'iconRoot', 'callbackRoot')
    
    myTree1 = `uiCreateTree`_(node1, leaf11, leaf12)
    myTree2 = `uiCreateTree`_(node2, leaf21, leaf22)
    
    concatTree = uiConcatTree(myTree1, myTree2)
    
    `uiDisplayTree`_(concatTree)




See Also
~~~~~~~~


+ `uiCreateNode`_ Creation of node (for Scilab Tree)
+ `uiCreateTree`_ Creation of a Tree
+ `uiDisplayTree`_ Printing a Tree in GUI mode
+ `uiDumpTree`_ Printing a Tree in the console (text mode)
+ `uiInsertNode`_ Insertion in a Tree
+ `uiDeleteNode`_ Deletion in a Tree
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
.. _uiDisplayTree: uiDisplayTree.html
.. _uiCreateTree: uiCreateTree.html
.. _uiGetNodePosition: uiGetNodePosition.html
.. _uiEqualsTree: uiEqualsTree.html
.. _uiGetChildrenNode: uiGetChildrenNode.html
.. _uiGetParentNode: uiGetParentNode.html


