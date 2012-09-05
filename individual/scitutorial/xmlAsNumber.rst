


xmlAsNumber
===========

Convert the result of a XPath query into a row of numbers



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nums = xmlAsNumber(xp)




Arguments
~~~~~~~~~

:xp xp, a XML mlist typed XMLSet or XMLList
: :nums nums, a single row of doubles
:



Description
~~~~~~~~~~~

The result of a XPath query or the chidren of a node can be a set of
XMLElements which contains numbers, so the aim of this function is to
convert the contents of each nodes into a double.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a>12</a><a>13</a><a>1.2345678</a><a>45e3</a><a>.23E-2</a></root>");
    
    // Retrieve the content of the nodes with name equals to "a"
    xp = `xmlXPath`_(doc, "//a/text()");
    
    // convert the result into doubles
    data = xmlAsNumber(xp)
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `xmlXPath`_ Make an XPath query on a XML document
+ `xmlAsText`_ Convert the result of a XPath query into a row of
  strings




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlXPath: xmlXPath.html
.. _xmlAsText: xmlAsText.html


