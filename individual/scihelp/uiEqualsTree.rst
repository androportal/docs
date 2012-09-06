


uiEqualsTree
============

Comparing two trees



Calling Sequence
~~~~~~~~~~~~~~~~


::

    isEqual = uiEqualsTree(tree1, tree2)




Input parameters
~~~~~~~~~~~~~~~~

:tree1, tree2 are of type Tree
:



Output parameters
~~~~~~~~~~~~~~~~~

:isEqual a Boolean, which indicate if those trees are equal or not
:



Description
~~~~~~~~~~~

Compare two trees structures.



Examples
~~~~~~~~


::

    // Creation of trees
    root = `uiCreateNode`_('Root', 'path\rootImage.jpg', 'rootCallback')
    node1 = `uiCreateNode`_('Node 1', 'default', 'node1Callback')
    node2 = `uiCreateNode`_('Node 2', 'default', 'node2Callback')
    myTree1 = `uiCreateTree`_(root, node1, node2)
    myTree2 = `uiCreateTree`_(root, node1, node2)
    
    // Compare myTree1 with myTree2
    isEqual = uiEqualsTree(myTree1, myTree2)
    
    // will return 'isEqual = T'




See Also
~~~~~~~~


+ `uiCreateNode`_ Creation of node (for Scilab Tree)
+ `uiCreateTree`_ Creation of a Tree
+ `uiDisplayTree`_ Printing a Tree in GUI mode
+ `uiDumpTree`_ Printing a Tree in the console (text mode)
+ `uiInsertNode`_ Insertion in a Tree
+ `uiDeleteNode`_ Deletion in a Tree
+ `uiConcatTree`_ Concatenation of Trees
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
.. _uiGetParentNode: uiGetParentNode.html
.. _uiGetChildrenNode: uiGetChildrenNode.html
.. _uiConcatTree: uiConcatTree.html


