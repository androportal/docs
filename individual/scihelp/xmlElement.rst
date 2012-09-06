


xmlElement
==========

Create a new XML element



Calling Sequence
~~~~~~~~~~~~~~~~


::

    e = xmlElement(doc, name)




Arguments
~~~~~~~~~

:doc a mlist typed XMLDoc
: :name a string giving the element name
: :e a mlist typed XMLElem
:



Description
~~~~~~~~~~~

Create a new XML element with the given name.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a>Hello</a><b> world</b></root>");
    e = xmlElement(doc, "c");
    e.attributes.attr = "value";
    e.content = "!";
    doc.root.children(3) = e;
    `xmlDump`_(doc)
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `XML Objects`_ Describe the properties of the different XML objects
+ `xmlDocument`_ Create a new XML document




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _XML Objects: XMLObjects.html
.. _xmlDocument: xmlDocument.html


