


xmlAsText
=========

Convert the result of a XPath query into a row of strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    strings = xmlAsText(xp)




Arguments
~~~~~~~~~

:xp xp, a XML mlist typed XMLSet or XMLList
: :strings strings, a single row of strings
:



Description
~~~~~~~~~~~

The result of a XPath query or the children of a node can be a set of
XMLElements, so the aim of this function is to convert the contents of
each nodes into a string.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a>Hello</a><a>Scilab</a><a>World</a></root>");
    
    // Retrieve the content of the nodes with name equals to "a"
    xp = `xmlXPath`_(doc, "//a/text()");
    
    // convert the result into a row of strings
    data = xmlAsText(xp)
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `xmlXPath`_ Make an XPath query on a XML document
+ `xmlAsNumber`_ Convert the result of a XPath query into a row of
  numbers




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlXPath: xmlXPath.html
.. _xmlAsNumber: xmlAsNumber.html


