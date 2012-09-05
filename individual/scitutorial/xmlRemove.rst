


xmlRemove
=========

Remove an element or a list of elements from their parents



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xmlRemove(elems)




Arguments
~~~~~~~~~

:elems elems, an XMLElem or a XMLSet (result of XPath query) or a
  XMLlist (a children list)
:



Description
~~~~~~~~~~~

Detach one or several elements from their parents. The detached
elements are definitly lost.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a>Hello</a><b>Scilab</b><a>World</a></root>");
    
    // Remove all the <a>
    xp = `xmlXPath`_(doc, "//a");
    xmlRemove(xp);
    `xmlDump`_(doc)
    xmlDelete(doc);
    
    // Remove the first element
    doc = `xmlReadStr`_("<root><a>Hello</a><b>Scilab</b><a>World</a></root>");
    xmlRemove(doc.root.children(1));
    `xmlDump`_(doc)
    
    //Remove all the root children
    xmlRemove(doc.root.children);
    `xmlDump`_(doc)
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `XMLObjects`_ Describe the properties of the different XML objects




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _XMLObjects: XMLObjects.html


