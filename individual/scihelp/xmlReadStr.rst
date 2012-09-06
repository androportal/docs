


xmlReadStr
==========

Read a XML tree from a string



Calling Sequence
~~~~~~~~~~~~~~~~


::

    doc = xmlReadStr(string [, validateDTD])




Arguments
~~~~~~~~~

:string a string, containing XML code.
: :validateDTD a boolean to indicate if the document must be
  validated.
: :doc a mlist typed XMLDoc
:



Description
~~~~~~~~~~~

Read and parse a XML string. The returned document allows to access to
the DOM tree which is kept in memory.

If validateDTD is set to true, the document will be validated or not
during the parsing operation.

It is important to notice that the tree must be freed (to avoid memory
leaks) with the function `xmlDelete`_.



Examples
~~~~~~~~


::

    doc = xmlReadStr("<root><a att=""foo"" rib=""bar""><b>Hello</b></a></root>");
    e = doc.root.children(1).children(1)
    e.name
    e.content
    `xmlDump`_(e)
    doc.root.children(1).attributes.att
    doc.root.children(1).attributes.rib
    
    // Modify the attributes
    doc.root.children(1).attributes.att = "truc"
    doc.root.children(1).attributes.rib = "machin"
    `xmlDump`_(doc.root.children(1))
    
    // We delete the doc
    xmlDelete(doc);




See Also
~~~~~~~~


+ `xmlRead`_ Read a XML stream from a local or distant file
+ `xmlGetOpenDocs`_ Get all open XML documents or all open XML
  Validation files.
+ `xmlDelete`_ Delete a XML document
+ `xmlDocument`_ Create a new XML document
+ `xmlValidate`_ Validate a document in using a DTD, a Relax NG or a
  Schema.




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlValidate: xmlValidate.html
.. _xmlRead: xmlRead.html
.. _xmlDocument: xmlDocument.html
.. _xmlGetOpenDocs: xmlGetOpenDocs.html
.. _xmlDelete: xmlDelete.html


