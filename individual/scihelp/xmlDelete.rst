


xmlDelete
=========

Delete a XML document



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xmlDelete(obj1 [, obj2, [...]])
    xmlDelete("all")




Arguments
~~~~~~~~~

:obji a mlist type XMLDoc or XMLValid, the document to delete
:



Description
~~~~~~~~~~~

Delete a document or a validation file (in fact free all the memory
associated with this object).

When the syntax xmlDelete("all") is used, all the open documents will
be deleted.



Examples
~~~~~~~~


::

    doc = `xmlRead`_("http://www.w3.org/TR/2009/REC-xml-names-20091208/xml-names-10-3e.xml");
    root = doc.root
    xmlDelete(doc);
    
    // root is no more valid... so try to access it, will lead to an error
    // disp(root) => This will fail




See Also
~~~~~~~~


+ `xmlGetOpenDocs`_ Get all open XML documents or all open XML
  Validation files.




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlGetOpenDocs: xmlGetOpenDocs.html


