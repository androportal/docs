


xmlDocument
===========

Create a new XML document



Calling Sequence
~~~~~~~~~~~~~~~~


::

    doc = xmlDocument([uri, [, version]])




Arguments
~~~~~~~~~

:uri a string giving document uri
: :version a string giving the XML version ofthe document
: :doc a mlist typed XMLDoc
:



Description
~~~~~~~~~~~

Create a new XML document.



Examples
~~~~~~~~


::

    doc = xmlDocument("TMPDIR/foo.xml");
    root = `xmlElement`_(doc, "root");
    root.attributes.attr = "value";
    
    root.children(1) = "<a>hello</a>";
    root.children(2) = `xmlElement`_(doc, "b");
    root.children(2).attributes.id = "123";
    root.children(2).content = " world";
    
    doc.root = root;
    `xmlDump`_(doc)
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `XML Objects`_ Describe the properties of the different XML objects
+ `xmlElement`_ Create a new XML element




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlElement: xmlElement.html
.. _XML Objects: XMLObjects.html


