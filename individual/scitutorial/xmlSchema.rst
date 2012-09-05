


xmlSchema
=========

Create a XML Schema object



Calling Sequence
~~~~~~~~~~~~~~~~


::

    schema = xmlSchema(path)




Arguments
~~~~~~~~~

:path a string giving the path of the validation file
: :dtd a mlist typed XMLValid
:



Description
~~~~~~~~~~~

Useful to validate a document with a Schema.



Examples
~~~~~~~~


::

    doc = `xmlRead`_("SCI/modules/xml/tests/unit_tests/library.xml");
    schema = xmlSchema("SCI/modules/xml/tests/unit_tests/library.xsd");
    
    // We test if the document is valid
    // If no error the file is valid
    
    `xmlValidate`_(doc, schema);
    
    xmlDelete(doc, schema);




See Also
~~~~~~~~


+ `xmlValidate`_ Validate a document in using a DTD, a Relax NG or a
  Schema.




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlValidate: xmlValidate.html


