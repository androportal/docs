


xmlSetAttributes
================

Set the attributes name and value.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xmlObj = xmlSetAttributes(xmlObj, nameValue)




Arguments
~~~~~~~~~

:xmlObj xmlObj, a XML mlist typed XMLSet or XMLList or XMLElem or
  XMLAttr
: :nameValue nameValue, a matrix nx2 or nx3 of strings where each rows
  contains [name value] or [prefix name value]
:



Description
~~~~~~~~~~~

Set the attributes of an element or a list of elements.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a><b><c></c></b></a><b></b></root>");
    
    // Retrieve all the nodes
    xp = `xmlXPath`_(doc, "//*");
    
    // Add the attributes hello="world" and bonjour="monde" to all the nodes
    xmlSetAttributes(xp, ["hello" "world" ; "bonjour" "monde"]);
    `xmlDump`_(doc)
    
    // Add the attribute foo="bar" to the first child of root
    xmlSetAttributes(doc.root.children(1), ["foo" "bar"]);
    `xmlDump`_(doc)
    
    // Add the attribute bar="foo" to all the children of root
    xmlSetAttributes(doc.root.children, ["bar" "foo"]);
    
    // Add the attribute truc="machin" to the list of the attributes of the second <b>
    xmlSetAttributes(doc.root.children(2).attributes, ["truc" "machin"]);
    `xmlDump`_(doc)
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `XMLObjects`_ Describe the properties of the different XML objects




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _XMLObjects: XMLObjects.html


