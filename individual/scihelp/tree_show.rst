


tree_show
=========

Display a tree view of a list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tree_show(x)




Arguments
~~~~~~~~~

:x list or mlist or tlist to display.
:



Description
~~~~~~~~~~~

Creates a window and displays a tree view of the given list.



Examples
~~~~~~~~


::

    // Simple example
    a=`list`_(1,2,3);
    tree_show(a);
    
    // Another example with mlist
    str=['a','b','c','d','e','f','g','h'];
    n=`hypermat`_([2,2,2],str);
    v=`hypermat`_([2,2,2],1:8);
    Mm=`mlist`_(['V','name','value'],n,v);
    tree_show(Mm);
    
    // Another example with tlist
    Mt=`tlist`_(['V','name','value'],['a','b','c'],[1 2 3]);
    tree_show(Mt);




