


xmlDTD
======

Create a XML DTD object



Calling Sequence
~~~~~~~~~~~~~~~~


::

    dtd = xmlDTD(path)




Arguments
~~~~~~~~~

:path a string giving the path of the validation file
: :dtd a mlist typed XMLValid
:



Description
~~~~~~~~~~~

Useful to validate a document with a DTD.



Examples
~~~~~~~~


::

    doc = `xmlRead`_("SCI/modules/xml/tests/unit_tests/library.xml");
    dtd = xmlDTD("SCI/modules/xml/tests/unit_tests/library.dtd");
    
    // We test if the document is valid
    // If no error the file is valid
    
    `xmlValidate`_(doc, dtd);
    
    xmlDelete(doc, dtd);




See Also
~~~~~~~~


+ `xmlValidate`_ Validate a document in using a DTD, a Relax NG or a
  Schema.




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlValidate: xmlValidate.html


