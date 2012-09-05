


xmlRelaxNG
==========

Create a XML Relax NG object



Calling Sequence
~~~~~~~~~~~~~~~~


::

    schema = xmlRelaxNG(path)




Arguments
~~~~~~~~~

:path a string giving the path of the validation file
: :dtd a mlist typed XMLValid
:



Description
~~~~~~~~~~~

Useful to validate a document with a Relax NG.



Examples
~~~~~~~~


::

    doc = `xmlRead`_("SCI/modules/xml/tests/unit_tests/library.xml");
    rng = xmlRelaxNG("SCI/modules/xml/tests/unit_tests/library.rng");
    
    // We test if the document is valid
    // If no error the file is valid
    
    `xmlValidate`_(doc, rng);
    
    xmlDelete(doc, rng);




See Also
~~~~~~~~


+ `xmlValidate`_ Validate a document in using a DTD, a Relax NG or a
  Schema.




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlValidate: xmlValidate.html


