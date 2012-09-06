


xmlGetOpenDocs
==============

Get all open XML documents or all open XML Validation files.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    list = xmlGetOpenDocs()




Arguments
~~~~~~~~~

:list list, a list containing all the open documents or XML Validation
  files
:



Description
~~~~~~~~~~~

This function is useful to delete open documents (and essentially to
free the memory).



Examples
~~~~~~~~


::

    doc = `xmlRead`_("http://www.w3.org/TR/2009/REC-xml-names-20091208/xml-names-10-3e.xml");
    doc = `xmlReadStr`_("<root><a att=""foo"" rib=""bar""><b>Hello</b></a></root>");
    l = xmlGetOpenDocs()
    xmlDelete("all");




See Also
~~~~~~~~


+ `xmlDelete`_ Delete a XML document




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlDelete: xmlDelete.html


