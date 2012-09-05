


xmlRead
=======

Read a XML stream from a local or distant file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    doc = xmlRead(path [, validateDTD])




Arguments
~~~~~~~~~

:path a string, the path to the file to read.
: :validateDTD a boolean to indicate if the document must be
  validated.
: :doc a mlist typed XMLDoc
:



Description
~~~~~~~~~~~

Read and parse a XML file. The returned document allows to access to
the DOM tree which is kept in memory.

If validateDTD is set to true, the document will be validated or not
during the parsing operation.

It is important to notice that the tree must be freed (to avoid memory
leaks) with the function `xmlDelete`_.



Examples
~~~~~~~~


::

    doc = xmlRead("http://www.w3.org/TR/2009/REC-xml-names-20091208/xml-names-10-3e.xml");
    e = doc.root.children(1).children(1)
    e.name
    e.content
    `xmlDump`_(e)
    
    // Now we can retrieve all the nodes with an 'href' attribute
    q = `xmlXPath`_(doc, "//*[@href]");
    q(1).attributes.href
    
    // We delete the doc
    xmlDelete(doc);




See Also
~~~~~~~~


+ `xmlReadStr`_ Read a XML tree from a string
+ `xmlGetOpenDocs`_ Get all open XML documents or all open XML
  Validation files.
+ `xmlDelete`_ Delete a XML document
+ `xmlDocument`_ Create a new XML document
+ `xmlXPath`_ Make an XPath query on a XML document
+ `xmlValidate`_ Validate a document in using a DTD, a Relax NG or a
  Schema.




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlValidate: xmlValidate.html
.. _xmlDocument: xmlDocument.html
.. _xmlGetOpenDocs: xmlGetOpenDocs.html
.. _xmlXPath: xmlXPath.html
.. _xmlReadStr: xmlReadStr.html
.. _xmlDelete: xmlDelete.html


