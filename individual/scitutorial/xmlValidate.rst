


xmlValidate
===========

Validate a document in using a DTD, a Relax NG or a Schema.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    error = xmlValidate(docs [, valid])




Arguments
~~~~~~~~~

:docs a mlist typed XMLDoc or a matrix of string containing path to
  XML documents
: :valid a mlist typed XMLValid.
: :error a matrix of string if an error occurred or []
:



Description
~~~~~~~~~~~

Validate an already parsed document or a set of documents with given
paths with a DTD, a Relax NG or a Schema. If the document is valid,
then the returned error is an empty matrix, else a matrix of strings
is returned with the error message.

Validate a document with its path can improve performance and reduce
the memory consumption.

It is not possible for the moment to validate a document against an
external DTD. The only way to do this is to include in your XML file
someting like <!DOCTYPE foo SYSTEM "foo.dtd"> and to use xmlValidate
without second argument.



Examples
~~~~~~~~


::

    doc = `xmlRead`_("SCI/modules/xml/tests/unit_tests/library.xml");
    dtd = `xmlDTD`_("SCI/modules/xml/tests/unit_tests/library.dtd");
    schema = `xmlSchema`_("SCI/modules/xml/tests/unit_tests/library.xsd");
    rng = `xmlRelaxNG`_("SCI/modules/xml/tests/unit_tests/library.rng");
    
    // We test if the document is valid
    // If no error the file is valid
    
    // DTD
    xmlValidate(doc, dtd);
    
    // Relax NG
    xmlValidate(doc, rng);
    
    // Schema
    xmlValidate(doc, schema);
    
    // All is ok... now we add a new element to the document
    doc.root.children(3) = "<a>error</a>"
    
    // Now the validations go to fail
    xmlValidate(doc, dtd);
    xmlValidate(doc, rng);
    xmlValidate(doc, schema);
    
    // You can validate a document with its path
    xmlValidate("SCI/modules/xml/tests/unit_tests/library.xml")
    xmlValidate("SCI/modules/xml/tests/unit_tests/invalid_library.xml")
    
    xmlValidate("SCI/modules/xml/tests/unit_tests/library.xml", schema)
    xmlValidate("SCI/modules/xml/tests/unit_tests/invalid_library.xml", rng)
    
    // We delete the all the open documents
    xmlDelete(doc, dtd, schema, rng);




See Also
~~~~~~~~


+ `xmlDTD`_ Create a XML DTD object
+ `xmlSchema`_ Create a XML Schema object
+ `xmlRelaxNG`_ Create a XML Relax NG object




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlDTD: xmlDTD.html
.. _xmlRelaxNG: xmlRelaxNG.html
.. _xmlSchema: xmlSchema.html


